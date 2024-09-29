# Universal Asynchronous Receiver Transmitter

UART is a digital serial communication peripheral which can receive and transmit data using two different wire. One wire is specifically to transmit data and the other to receive data. 
UART can use 8bit or 9bit data signal depended on the module configuration.

![USB-To-UART-Bridge](https://github.com/user-attachments/assets/233cfec1-8dc0-45b6-83d1-bb5af198d674)
<br/>
CP2102 intergrated circuit in picture above is an USB to UART bridge device which can be used to tranfer data between MCU and a computer using virtual com port, VCP. 
CP2102 device driver is needed to use VCP. Download and install driver from [Silicon Labs](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=downloads). 
Refer to [datasheet](https://www.silabs.com/documents/public/data-sheets/CP2102-9.pdf) and [user guide](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=documentation).
<br/>

<br/>

## Initialize Peripheral

<br/>
