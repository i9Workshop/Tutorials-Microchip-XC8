#  Serial Peripheral Interface

SPI is a digital serial communication peripheral which can receive and transmit data using four wire through multiple slaves device. One wire is specificaly to generate communication clock and one wire to transmit data and one wire to receive data and one wire to select slave device. SPI master device will send and receive 8bit data for selected slave device.
<br/>

![Diagram-SPI-Communication](https://github.com/user-attachments/assets/f99ac7a5-eccf-4883-8186-f20bf76376c3)
<br/>

Diagram above shows the connection of serial clock, $SCk$ and serial data in, $SDI$ and serial data out, $SDO$ and 3 active low slave select, $\overline{SS}$ between single master device and multiple slave devices.
<br/>

<br/>
