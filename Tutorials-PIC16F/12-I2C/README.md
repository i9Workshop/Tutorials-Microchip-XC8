# Inter-Intergrated Circuit

I<sup>2</sup>C is a digital serial communication peripheral which can receive and transmit data using two wire through multiple slaves device. 
One wire is specificaly to generate communication clock and the other to transmit and receive data. 
I<sup>2</sup>C master device send 8bit data with address byte and data byte to slave devices, thus only the slave device with address intended will receive or transmit data.
<br/>

![Diagram I2C Communication](https://github.com/user-attachments/assets/5c2d3047-43b0-429b-9107-c423228c7643)
<br/>

Diagram above shows the connection of serial clock, $SCl$ and serial data, $SDa$ between single master device and multiple slave devices. 
Pull up resistors, $R_{1}$ and $R_{2}$ are required with recommended value $10k\Omega$
<br/>

<br/>
