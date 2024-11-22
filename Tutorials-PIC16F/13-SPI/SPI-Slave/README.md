# SPI Slave MCU

Slave device used is [StarterSlaveBoardV1-PIC16F1783](https://github.com/i9Workshop/Tutorials-Microchip-XC8).
<br/>

<br/>

## Initialize Peripheral

* Set pin direction of RC2, RC3, RC4 and RC5 to input, input, input and output respectively at register TRISC - Page 306 at note 3
* Set alternate pin function control register APFCON at SCKSEL, SDISEL and SDOSEL to use RC3, RC4 and RC5 respectively - Page 111
  ```
      // SCk pin
      TRISCbits.TRISC3 = 1;
      APFCONbits.SCKSEL = 0;
      
      // SDI pin
      TRISCbits.TRISC4 = 1;
      APFCONbits.SDISEL = 0;
      
      // SDO pin
      TRISCbits.TRISC5 = 0;
      APFCONbits.SDOSEL = 0;
      
      // SS pin
      TRISCbits.TRISC2 = 1;
  ```
  <br/>

* Initialize MSSP module as slave.
  ```
      void spi_Initialize(void);
  ```
  
  ```
  void spi_Initialize(void) {
      SSPCON1bits.SSPM = 5; // Set MSSP module for SPI slave mode - Page 306
  	  
      SSPCON1bits.SSPEN = 1; // Set enable MSSP module - Page 306
      
      delay_x1o5us(2); // Wait for MSSP module configuration - Page 373 from I/O pin timing
                       // Tioz = 2us
  }
  ```
<br/>

<br/>

## Create SPI Scan Master Function

```
    void spi_ScanMaster(void);
```

```
void spi_ScanMaster(void) {
    // Single byte data transmit and receive - Page 263
    if(!spi_SS) { // Polling to wait for master communication
        spi_Data = SSPBUF; // Read data from MSSP module buffer - Page 266
        
        NOP();
        
        SSPBUF = spi_Data; // Transmit data received back to master
        
        while(!spi_SS); // Wait for master to release slave device
    }
}
```
<br/>

<br/>

## Main Program

```
uint8_t spi_Data = 0; // Variable to store received data


void programInitialize(void) {
    spi_Initialize();
}

void programLoop(void) {
    ledMatrix_SetDisplay(spi_Data); // Display LEDs matrix from variable spi_Data
}
```
<br/>

<br/>

## MPLabX Code

* 
<br/>

<br/>

