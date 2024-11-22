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

<br/>

<br/>
