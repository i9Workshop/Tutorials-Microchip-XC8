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

A software is also needed to monitor serial data transmitted or received in a computer. Thus, software can be developed to monitor and control a MCU from a computer.
<br/>
<br/>

![Circuit-UART-Bridge](https://github.com/user-attachments/assets/fe6e34b0-97ea-47b8-9504-826c5b1ca26b)
<br/>
Circuit 10.1

UART communication wires are cross connected to each other between transmit and receive, such that MCU Tx pin connected to UART bridge Rx pin and vice versa. 
RC6 is the MCU transmit pin, Tx while RC7 is the MCU receive pin, Rx.
<br/>

<br/>

## Initialize Peripheral

<br/>
