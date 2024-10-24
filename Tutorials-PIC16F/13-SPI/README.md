#  Serial Peripheral Interface

SPI is a digital serial communication peripheral which can receive and transmit data using 4 wire through multiple slaves device. One wire is specificaly to generate communication clock and the 1 wire to transmit data and 1 wire to receive data and 1 wire to select slave device. SPI master device will send and receive 8bit data for selected slave device.
<br/>

![Diagram-SPI-Communication](https://github.com/user-attachments/assets/9bcc2b04-b9a1-4c01-a36f-b3eeb586ce8e)
<br/>

Diagram above shows the connection of serial clock, $SCk$ and serial data in, $SDI$ and serial data out, $SDO$ and 3 active low slave select, $\overline{SS}$ between single master device and multiple slave devices.
<br/>

<br/>
