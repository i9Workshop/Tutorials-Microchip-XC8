# Universal Asynchronous Receiver Transmitter

UART is a digital serial communication peripheral which can receive and transmit data using two wire. One wire is specifically to transmit data and the other to receive data. 
UART can use 8bit or 9bit data signal depended on the module configuration.
<br/>
<br/>

![USB-To-UART-Bridge](https://github.com/user-attachments/assets/b588fa5b-7bc9-408e-927f-27dbb1b14b61)
<br/>
Intergrated circuit module in the picture above is an USB to UART bridge device which can be used to transfer data between MCU and a computer using virtual com port, VCP. 
Device [driver](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=downloads) is needed to use VCP. 
Refer to CP2102 device [datasheet](https://www.silabs.com/documents/public/data-sheets/CP2102-9.pdf) and [user guide](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=documentation).

A software is also needed to monitor serial data transmitted or received in a computer. Thus, software can be developed to monitor and control a MCU from a computer. Download example serial monitor [here](https://github.com/i9Workshop/Java-Serial-Monitor).

Besides computer, communication of two MCUs can also use UART. There are other device that use UART such as GSM and GPS module.
<br/>
<br/>

![Circuit-UART-Bridge](https://github.com/user-attachments/assets/2968cac9-9230-44ba-80d2-58b6b94a516c)
<br/>
Circuit 10.1

UART communication wires are cross connected to each other between transmit and receive, such that MCU Tx pin connected to UART bridge Rx pin and vice versa. 
RC6 is the MCU transmit pin, Tx while RC7 is the MCU receive pin, Rx.
<br/>

<br/>

## Initialize Peripheral

* Set pin direction of RC6 to output and RC7 to input at register TRISC - Page 125
* Set alternate pin function control register APFCON at TXSEL and RXSEL to use RC6 and RC7 respectively - Page 111
  
  ```
      // Tx pin
      TRISCbits.TRISC6 = 0;
      APFCONbits.TXSEL = 0;
      
      // Rx pin
      TRISCbits.TRISC7 = 1;
      APFCONbits.RXSEL = 0;
  ```

<br/>

* Define CPU frequency and create a function to initalize UART module with desired baudrate.
  
  ```
  #define _User_FOSC      32000000
  ```
  
  ```
      void uart_Initialize(uint32_t fosc, uint32_t baudrate);
  ```
  
  ```
  void uart_Initialize(uint32_t fosc, uint32_t baudrate) {
      // Datasheet page 320
      TXSTAbits.CSRC = 0;     // UART module clock source generated internally from BRG
      TXSTAbits.TX9 = 0;      // Disable 9bit transmission
      TXSTAbits.TXEN = 1;     // Set enable UART module
      TXSTAbits.SYNC = 0;     // Set UART module to use asynchronous mode
      TXSTAbits.BRGH = 0;     // Set UART module to use low speed baud rate
      
      // Datasheet page 321
      RCSTAbits.SPEN = 1;     // Set enable serial port
      RCSTAbits.RX9 = 0;      // Set UART module to use 8bit reception mode
      RCSTAbits.CREN = 1;     // Set enable receiver
      
      BAUDCONbits.BRG16 = 1;  // Set UART module baud rate period to use 16bit register
      BAUDCONbits.ABDEN = 0;  // Set UART module not to use baud rate auto detect mode
      
      // Calculate baud rate generator period using formula, SPBRG = FOSC/[4 (n+1)]
      // Refer to table 27-3: Baud Rate Formula - Page 324
      uint16_t brgPeriod = (uint16_t)(((fosc/baudrate)/16) - 1);
      
      SPBRGH = (uint8_t)(brgPeriod << 8);
      SPBRGL = (uint8_t)brgPeriod;
      
      delay_x1o5us(23); // Wait for UART to reconfigure BRG - Page 373 from I/O pin timing
  }
  ```
<br/>

<br/>

## Create UART Function


<br/>

## Example Program


<br/>

## MPLabX Code


<br/>

<br/>
