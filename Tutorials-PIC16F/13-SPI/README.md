#  Serial Peripheral Interface

I2C is a digital serial communication peripheral which can receive and transmit data using two wire through multiple slaves device. One wire is specificaly to generate communication clock and the other to transmit and receive data. I2C master device send 8bit data with address byte and data byte to slave devices, thus only the slave device with address intended will receive or transmit data.
<br/>

![Diagram-SPI-Communication](https://github.com/user-attachments/assets/9bcc2b04-b9a1-4c01-a36f-b3eeb586ce8e)
<br/>

Diagram above shows the connection of serial clock, SCk and serial data in, SDI and serial data out, SDO and 3 slave select, $\overline{SS}$ between single master device and multiple slave devices.
<br/>

<br/>
