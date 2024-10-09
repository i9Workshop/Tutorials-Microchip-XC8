# I<sup>2</sup>C Master MCU - Slave RTCC

![RTCC-DS3231](https://github.com/user-attachments/assets/1a0526c9-6ae8-42f6-818c-b45aaa9ddc68)
<br/>
Refer to DS3231 RTCC module [datasheet](https://www.farnell.com/datasheets/2345152.pdf?_gl=1*1p7rxu4*_gcl_aw*R0NMLjE3MjYxMDYzNTIuQ2p3S0NBandfNFMzQmhBQUVpd0FfNjRZaHNVMEF0WnZRZFJON2Fac1l3ajlPZTRrMG80SVZuQXpXWTVyNHk3bFVmZzdMRGo5SGFEd0RSb0NMeG9RQXZEX0J3RQ..*_gcl_au*MTg2Mzg2NDUxNS4xNzI2MTA1NTU4).
<br/>

![Circuit-RTCC-DS3231](https://github.com/user-attachments/assets/96f3352a-1052-4173-a20c-6f6a4f9af7c4)
<br/>
Circuit 11.1.1
<br/>

RC3 connected to SCl is MCU master clock pin while RC4 connected to SDa is MCU data pin.
<br/>

<br/>

## Initialize Peripheral

* Set pin direction of RC3 and RC4 to input at register TRISC - Page 306 at note 3
* Set alternate pin function control register APFCON at SCKSEL and SDISEL to use RC3 and RC4 respectively - Page 111
  
  ```
      // SCl pin
      TRISCbits.TRISC3 = 1;
      APFCONbits.SCKSEL = 0;
      
      // SDa pin
      TRISCbits.TRISC4 = 1;
      APFCONbits.SDISEL = 0;
  ```

<br/>

* Define CPU frequency and create a function to initalize MSSP module with changeable desired baud rate.
  - Baud rate is word per second, $B_d$ thus the bit rate, $B_R$ for I<sup>2</sup>C is
    >$B_R = B_d \times{} 9bit$
  
  ```
  #define _User_FOSC      32000000 // CPU Clock Frequency
  ```
  
  ```
      void i2c_Initialize(uint32_t fosc, uint16_t baudrate);
  ```
  
  ```
  void i2c_Initialize(uint32_t fosc, uint16_t baudrate) {
      SSPCON1bits.SSPEN = 1; // Set enable MSSP module - Page 306
      SSPCON1bits.SSPM = 8; // Set MSSP module for I2C master mode with clock = FOSC/(4*(SSPADD+1)) - Page 306
      
      SSPSTATbits.SMP = 1; // Set disabled slew rate control for standard speed mode - Page 304
      
      SSPCON3bits.SDAHT = 0; // Set 100ns for minimum SDA hold time - Page 308
      
      if(baudrate>2223) baudrate = 2223; // Set maximum baud rate to 2223 - baud rate tested and worked below 2224
      else if(baudrate<1113) baudrate = 1113; // Set minimum baud rate to 1113 - baud rate tested and worked above 1112
      SSPADD = (uint8_t)((fosc/baudrate) / 4 - 1); // Set baud rate generator register - Page 309
      
      delay_x1o5us(23); // Wait for MSSP module to be ready - Page 373 from I/O pin timing
  }
  ```
<br/>

<br/>

## Create I<sup>2</sup>C Functions

* Refer to datasheet page 291 and 293 to create these fuctions that will be use repeatedly to read and write in sequence on I<sup>2</sup>C bus.
  
  ```
      void i2c_Initialize(uint32_t fosc, uint16_t baudrate);
      void i2c_BusIdle(void);
      void i2c_MasterStart(void);
      void i2c_MasterRstart(void);
      void i2c_MasterStop(void);
      void i2c_MasterWrite(uint8_t byte);
      uint8_t i2c_MasterRead(uint8_t ack);
  ```
  
  ```
  void i2c_BusIdle(void) { // Wait for I2C bus to be idle
      while(SSPCON2 & 0b00011111); // Polling to hold program when one of SSPCON2 bit from 4th to 0th is 1 - Page 307
                                   // The registers are ACKEN, RCEN, PEN, RSEN or SEN.
  }
  
  void i2c_MasterStart(void) { // Initiate start condition to bus
      i2c_BusIdle();
      
      SSPCON2bits.SEN = 1; // Set to initiate start condition - Page 307
      NOP(); // Wait for start condition setup time - Page 385
      NOP(); // Tdelay = THD:STA, minimum high speed
      NOP(); // Tdelay = 600ns / 0.125us = 4.8
      NOP();
      NOP();
  }
  
  void i2c_MasterRstart(void) { // Initiate repeat start condition to bus
      i2c_BusIdle();
      
      SSPCON2bits.RSEN = 1; // Set to initiate repeat start condition - Page 307
      NOP(); // Wait for start condition setup time - Page 385
      NOP(); // Tdelay = THD:STA, minimum high speed
      NOP(); // Tdelay = 600ns / 0.125us = 4.8
      NOP();
      NOP();
  }
  
  void i2c_MasterStop(void) { // Initiate stop condition to bus
      i2c_BusIdle();
      
      SSPCON2bits.PEN = 1; // Set to initiate stop condition - Page 307
      
      delay_x1o5us(7); // Wait for stop condition setup time - Page 385 and 386
                       // Tdelay = TR + TSU:STO + TBUF
                       // delay = Tdelay / 1.5us = (1000ns + 4700ns + 4.7uf) / 1.5uf = 6.9
                       // Value in datasheet not tested note as * in page 386
      
      delay_x24o25us(60); // Additional time the bus must be free before a new transmission can start - tested
  }
  
  void i2c_MasterWrite(uint8_t byte) { // Write a byte to bus
      i2c_BusIdle();
      
      SSPBUF = byte;          // Write to MSSP register to transmit data - Page 291
      
      while(SSPSTATbits.BF);  // Polling to hold program while MSSP module transmit not complete  - Page 293
  }
  
  uint8_t i2c_MasterRead(uint8_t ack) { // Read a byte from bus
      uint8_t data = 0;        // Declare a variable to read MSSP receive register
      
      i2c_BusIdle();
      
      SSPCON2bits.RCEN = 1;    // Set enable MSSP receive mode - Page 307
      
      while(!SSPSTATbits.BF);  // Polling to hold program while MSSP module receive not complete - Page 293
      
      data = SSPBUF;           // Read MSSP receive register - Page 305
      
      SSPCON2bits.ACKEN = ack; // Set variable ack value to acknowledge sequence - Page 307
      
      return data;
  }
  ```
<br/>

* Create functions to read and write sequence for RTCC slave. Slave address used will be shifted one to the left where one word slave address can only support 7bit number of devices only, 128.
  Slave address LSB is used for read or write instruction. Refer to RTCC datasheet to arange the sequences in page 16 and 17.
  
  ```
      void i2c_MasterByteWriteSlave(uint8_t addrDev, uint8_t addrReg, uint8_t data);
      uint8_t i2c_MasterByteReadSlave(uint8_t addrDev, uint8_t addrReg);
  ```
  
  ```
  void i2c_MasterByteWriteSlave(uint8_t addrDev, uint8_t addrReg, uint8_t data) {
      i2c_MasterStart();
      
      i2c_MasterWrite((uint8_t)(addrDev << 1)); // Device write address
      
      i2c_MasterWrite(addrReg); // RTCC register address
      
      i2c_MasterWrite(data); // Write data to RTCC register
      
      i2c_MasterStop();
  }
  
  uint8_t i2c_MasterByteReadSlave(uint8_t addrDev, uint8_t addrReg) {
      uint8_t data = 0;
      
      i2c_MasterStart();
      
      i2c_MasterWrite((uint8_t)(addrDev << 1)); // Device write address
      
      i2c_MasterWrite(addrReg); // RTCC register address
      
      i2c_MasterRstart();
      
      i2c_MasterWrite((uint8_t)((addrDev << 1) | 1)); // Device read address
      
      data = i2c_MasterRead(0); // Read data from RTCC register
      
      i2c_MasterStop();
      
      return data;
  }
  ```
<br/>

<br/>

## Create RTCC Functions

* Create binary coded decimal, BCD number to decimal, DEC number converter function and vice versa.
  
  ```
      uint8_t rtcc_ConvertBcdToDec(uint8_t bcd);
      uint8_t rtcc_ConvertDecToBcd(uint8_t dec);
  ```
  
  ```
  uint8_t rtcc_ConvertBcdToDec(uint8_t bcd) {
      return ((bcd >> 4) & 0x0F) * 10 + (bcd & 0x0F);
  }
  
  uint8_t rtcc_ConvertDecToBcd(uint8_t dec) {
      uint8_t msb = (uint8_t)(dec/10);
      uint8_t lsb = dec - (msb * 10);
      
      return (uint8_t)((msb << 4) | lsb);
  }
  ```
<br/>

* Create fuction to write and display RTCC on LCD.
  
  ```
      void rtcc_WriteRegister(uint8_t day, uint8_t date, 
          uint8_t month, uint8_t century, uint8_t year, 
          uint8_t hour, uint8_t minute, uint8_t second);
      void rtcc_LcdDisplay(uint8_t day, uint8_t date,
          uint8_t month, uint8_t century, uint8_t year,
          uint8_t hour, uint8_t minute, uint8_t second);
  ```
  
  ```
  void rtcc_WriteRegister(uint8_t day, uint8_t date,
          uint8_t month, uint8_t century, uint8_t year,
          uint8_t hour, uint8_t minute, uint8_t second) { // Write data to RTCC register
      // Write all RTCC data, refer to table timekeeping registers in RTCC datasheet page 11
      i2c_MasterByteWriteSlave(_Address_RTCC, 3, day);
      i2c_MasterByteWriteSlave(_Address_RTCC, 6, rtcc_ConvertDecToBcd(year));
      i2c_MasterByteWriteSlave(_Address_RTCC, 5, (uint8_t)(rtcc_ConvertDecToBcd(month) | (century << 7)));
      i2c_MasterByteWriteSlave(_Address_RTCC, 4, rtcc_ConvertDecToBcd(date));
      i2c_MasterByteWriteSlave(_Address_RTCC, 2, rtcc_ConvertDecToBcd(hour));
      i2c_MasterByteWriteSlave(_Address_RTCC, 1, rtcc_ConvertDecToBcd(minute));
      i2c_MasterByteWriteSlave(_Address_RTCC, 0, 0);
  }
  
  void rtcc_LcdDisplay(uint8_t day, uint8_t date, 
          uint8_t month, uint8_t century, uint8_t year, 
          uint8_t hour, uint8_t minute, uint8_t second) {
      lcd_Goto(0, 0);
      lcd_PrintString("I2C RTCC");
      
      lcd_Goto(0, 11);
      lcd_PrintDigitInt32(date, 2, false, true);
      lcd_PrintChar('/');
      
      lcd_Goto(0, 14);
      lcd_PrintDigitInt32(month, 2, false, true);
      
      lcd_Goto(1, 12);
      lcd_PrintDigitInt32(century, 2, false, true);
      
      lcd_Goto(1, 14);
      lcd_PrintDigitInt32(year, 2, false, true);
      
      lcd_Goto(1, 0);
      lcd_PrintDigitInt32(hour, 2, false, true);
      lcd_PrintChar(':');
      
      lcd_Goto(1, 3);
      lcd_PrintDigitInt32(minute, 2, false, true);
      lcd_PrintChar(':');
      
      lcd_Goto(1, 6);
      lcd_PrintDigitInt32(second, 2, false, true);
      
      lcd_Goto(1, 9);
      switch(day) {
          case 1:
              lcd_PrintString("Su");
              break;
              
          case 2:
              lcd_PrintString("Mo");
              break;
              
          case 3:
              lcd_PrintString("Tu");
              break;
              
          case 4:
              lcd_PrintString("We");
              break;
              
          case 5:
              lcd_PrintString("Th");
              break;
              
          case 6:
              lcd_PrintString("Fr");
              break;
              
          case 7:
              lcd_PrintString("Sa");
              break;
              
          default:
              lcd_PrintString("Dd");
              break;
      }
  }
  ```
<br/>

<br/>

## Example Program

```
void programInitialize(void) {
    lcd_Initialize();
    
    rtcc_LcdDisplay(0, 0, 0, 0, 0, 0, 0, 0);
    
    i2c_Initialize(_User_FOSC, 1200); // Set bit rate x9bit/baud = 10.8kHz
}
```

```
void programLoop(void) {
    uint8_t bcdSecond = 0; // Variable for current second
    uint8_t bcdSecondPrev = 0; // Variable for previous second
    uint8_t decSecond = 0;
    
    uint8_t bcdMinute = 0;
    uint8_t bcdHour = 0;
    uint8_t bcdDate = 0;
    uint8_t bcdMonth = 0;
    uint8_t bcdYear = 0;
    
    uint8_t decMinute = 0;
    uint8_t decHour = 0;
    uint8_t decDate = 0;
    uint8_t decMonth = 0;
    uint8_t decYear = 0;
    uint8_t decCentury = 0;
    
    uint8_t day = 0;
    
    // rtcc_WriteRegister(2, 7, 10, 0, 24, 14, 20, 0); // Use this function to set RTCC module
    
    while(1) {
        bcdSecond = i2c_MasterByteReadSlave(_Address_RTCC, 0); // Read RTCC second
        
        if(bcdSecond != bcdSecondPrev) { // Condition is true if variable bcdSec not same as bcdSecPrev
            // Read all RTCC data, refer to table timekeeping registers in RTCC datasheet page 11
            
            bcdMinute = i2c_MasterByteReadSlave(_Address_RTCC, 1);
            bcdHour = i2c_MasterByteReadSlave(_Address_RTCC, 2);
            day = i2c_MasterByteReadSlave(_Address_RTCC, 3);
            bcdDate = i2c_MasterByteReadSlave(_Address_RTCC, 4);
            bcdMonth = i2c_MasterByteReadSlave(_Address_RTCC, 5);
            bcdYear = i2c_MasterByteReadSlave(_Address_RTCC, 6);
            
            // Convert BCD to DEC number
            
            decSecond = rtcc_ConvertBcdToDec(bcdSecond);
            decMinute = rtcc_ConvertBcdToDec(bcdMinute);
            decHour = rtcc_ConvertBcdToDec(bcdHour);
            decDate = rtcc_ConvertBcdToDec(bcdDate);
            decMonth = rtcc_ConvertBcdToDec(bcdMonth & 0x1F); // Register address 05h, read 4th bit until 0th bit
            decYear = rtcc_ConvertBcdToDec(bcdYear);
            decCentury = bcdMonth >> 7; // Register address 05h, read 7th bit only
            
            rtcc_LcdDisplay(day , decDate, decMonth, 20 + decCentury, decYear,
                decHour, decMinute, decSecond);
        }
        
        bcdSecondPrev = bcdSecond;
        
        delay_ms(200); // RTCC refresh rate
    }
}
```
<br/>

<br/>

## MPLabX Code

<br/>

<br/>
