# SPI Master MCU

Master device used is [StarterSlaveBoardV1-PIC16F1783](https://github.com/i9Workshop/Tutorials-Microchip-XC8). 
Master device will send a single byte data to slave device and received back the data to display it on LCDs matrix. Thus, master and slave device had the same LEDs matrix pattern.
<br/>

<br/>

## Initialize Peripheral

* Set pin direction of RC2, RC3, RC4 and RC5 to output, output, input and output respectively at register TRISC - Page 306 at note 3
* Set alternate pin function control register APFCON at SCKSEL, SDISEL and SDOSEL to use RC3, RC4 and RC5 respectively - Page 111
  ```
      // SCk pin
      TRISCbits.TRISC3 = 0;
      APFCONbits.SCKSEL = 0;
      
      // SDI pin
      TRISCbits.TRISC4 = 1;
      APFCONbits.SDISEL = 0;
      
      // SDO pin
      TRISCbits.TRISC5 = 0;
      APFCONbits.SDOSEL = 0;
      
      // SS pin
      TRISCbits.TRISC2 = 0;
      spi_SS1 = 1;
  ```
  <br/>

* Initialize MSSP module as master with desired baud rate.
  
  ```
  #define _User_FOSC      32000000 // CPU Clock Frequency
  ```
  
  ```
  void spi_Initialize(uint32_t fosc, uint16_t baudrate);
  ```
  
  ```
  void spi_Initialize(uint32_t fosc, uint16_t baudrate) {
      SSPSTATbits.SMP = 1; // Set input data sampled at end of data output time
      
      SSPCON1bits.SSPM = 10; // Set MSSP module for SPI master mode with clock = FOSC/(4*(SSPADD+1)) - Page 306
      
      SSPADD = (uint8_t)((fosc/baudrate) / 4 - 1); // Set baud rate generator register - Page 309
  	
      SSPCON1bits.SSPEN = 1; // Set enable MSSP module - Page 306
      
      delay_x1o5us(2); // Wait for MSSP module configuration - Page 373 from I/O pin timing
                       // Tioz = 2us
  }
  ```
  <br/>

<br/>

## Create SPI Master Transfer Data

```
uint8_t spi_TransferByteSlave1(uint8_t data) {
    // Single byte data transmit and receive - Page 262
    
    spi_SS1 = 0; // Select slave device 1
    
    uint8_t rxData = 0; // Variable to store received data
    
    NOP();
    
    SSPBUF = data; // Transmit data to slave - Page 266
    
    while(!PIR1bits.SSP1IF); // Wait transmission to slave complete - Page 262 and 266
    PIR1bits.SSP1IF = 0; // Clear MSSP module interrupt
    
    while(!SSPSTATbits.BF); // Wait data from slave - Page 305
    
    rxData = SSPBUF; // Read data received
    
    spi_SS1 = 1; // Unselect slave device 1
    
    return rxData; // Return received data
}
```
<br/>

<br/>

## Example Program

```
void programInitialize(void) {
    spi_Initialize(_User_FOSC, 1000); // Set bit rate x8bit/baud = 8kHz
}

void programLoop(void) {
    uint8_t i = 0; // Variable for delay
    uint8_t dataReturn = 0; // Variable for data returned from slave
    bool transferDoneFlag = false; // Variable to check status data had been transfered
    
    for(i=0; i<50; i++) {
        if(!transferDoneFlag) { // Condition if data had not yet transfered
            dataReturn = spi_TransferByteSlave1(counter++); // Transfer counter data to slave device 1
            transferDoneFlag = true; // Set flag after data was transfered
        }
        
        ledMatrix_SetDisplay(dataReturn); // Display LEDs matrix from variable dataReturn
    }
}
```
<br/>

<br/>

## MPLabX Code

* https://github.com/i9Workshop/StarterSlaveBoardV1-PIC16F1783-SpiMasterLedMatrix
<br/>

<br/>

