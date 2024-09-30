# Universal Asynchronous Receiver Transmitter

UART is a digital serial communication peripheral which can receive and transmit data using two different wire. One wire is specifically to transmit data and the other to receive data. 
UART can use 8bit or 9bit data signal depended on the module configuration.
<br/>
<br/>

![USB-To-UART-Bridge](https://github.com/user-attachments/assets/b588fa5b-7bc9-408e-927f-27dbb1b14b61)
<br/>
Intergrated circuit module in the picture above is an USB to UART bridge device which can be used to transfer data between MCU and a computer using virtual com port, VCP. 
Device [driver](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=downloads) is needed to use VCP. 
Refer to CP2102 device [datasheet](https://www.silabs.com/documents/public/data-sheets/CP2102-9.pdf) and [user guide](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=documentation).
<br/>
<br/>

![Circuit-VCP](https://github.com/user-attachments/assets/339b2672-c588-4c77-a806-0c7534be2eff)
<br/>
Circuit 10.1

UART communication wires are cross connected to each other between tranmit and receive pin and vice versa. RC6 is the MCU transmit pin while RC7 is the receive pin.
<br/>

<br/>

## Initialize Peripheral

<br/>
