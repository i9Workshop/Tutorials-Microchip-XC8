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

* Set pin direction of RC3 to output and initialy RC4 to output at register TRISC - Page 125
* Set alternate pin function control register APFCON at SCKSEL and SDISEL to use RC3 and RC4 respectively - Page 111
  
  ```
      // SCl pin
      TRISCbits.TRISC3 = 1;
      APFCONbits.SCKSEL = 0;
      
      // SDa pin
      TRISCbits.TRISC4 = 0;
      APFCONbits.SDISEL = 0;
  ```

<br/>

* Define CPU frequency and create a function to initalize MSSP module with changeable desired baud rate.
  
  ```
  #define _User_FOSC      32000000 // CPU Clock Frequency
  ```
  
  ```
      void i2c_Initialize(uint32_t fosc, uint32_t baudrate);
  ```

  ```

  ```
<br/>

## Create I<sup>2</sup>C Function

<br/>

## Example Program

<br/>

## MPLabX Code

<br/>

<br/>
