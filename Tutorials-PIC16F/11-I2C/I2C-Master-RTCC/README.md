# I<sup>2</sup>C Master MCU - Slave RTCC

![RTCC-DS3231](https://github.com/user-attachments/assets/1a0526c9-6ae8-42f6-818c-b45aaa9ddc68)
<br/>
Refer to DS3231 RTCC module [datasheet](https://www.farnell.com/datasheets/2345152.pdf?_gl=1*1p7rxu4*_gcl_aw*R0NMLjE3MjYxMDYzNTIuQ2p3S0NBandfNFMzQmhBQUVpd0FfNjRZaHNVMEF0WnZRZFJON2Fac1l3ajlPZTRrMG80SVZuQXpXWTVyNHk3bFVmZzdMRGo5SGFEd0RSb0NMeG9RQXZEX0J3RQ..*_gcl_au*MTg2Mzg2NDUxNS4xNzI2MTA1NTU4).
<br/>

![Circuit-RTCC-DS3231](https://github.com/user-attachments/assets/c569d453-6aa1-4ab7-97d6-7d3623187773)
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
  - Baud rate is byte per second, $B_d$ thus the bit rate, $B_R$ for I<sup>2</sup>C is
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
      
      if(baudrate>2223) baudrate = 2223; // Set maximum baud rate to 2223 - baud rate tested and worked
      SSPADD = (uint8_t)((fosc/baudrate) / 4 - 1); // Set baud rate generator register - Page 309
      
      delay_x1o5us(23); // Wait for MSSP module to be ready - Page 373 from I/O pin timing
  }
  ```
<br/>

## Create I<sup>2</sup>C Function

<br/>

## Example Program

<br/>

## MPLabX Code

<br/>

<br/>
