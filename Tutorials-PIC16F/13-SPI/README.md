#  Serial Peripheral Interface

SPI is a digital serial communication peripheral which can receive and transmit data using four wire through multiple slaves device. One wire is specificaly to generate communication clock and one wire to transmit data and one wire to receive data and one wire to select slave device. SPI master device will send and receive 8bit data for selected slave device.
<br/>

![Diagram-SPI-Communication-Labeled](https://github.com/user-attachments/assets/59b35653-0c52-42c0-b18b-cfce0d5e7030)
<br/>

Diagram above shows the connection of master serial clock, $SCk$ and serial data in, $SDI$ and serial data out, $SDO$ and three active low slave select, $\overline{SS}$. 
Master $SDI$ is connected to slave $SDO$ and master $SDO$ is connected to slave $SDI$.
<br/>

<br/>
