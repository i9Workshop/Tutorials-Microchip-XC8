# Pulse Width Modulation - Motor Speed

![Motor-DC-Brush-1](https://github.com/user-attachments/assets/8efb1921-d0e7-4e3f-af0b-922a036f3b66)
<br/>
In this tutorial, DC brush motor will be used as example to control rotation speed by using PWM. 
DC brush motor uses very high power than MCU thus a driver circuit is needed to control direction and speed. 
Saperate the circuitory adds the advantage which protects the MCU from damage if fault occurs at driver circuit.
<br/>

![DC Brush Motor Driver](https://github.com/user-attachments/assets/633dbbe0-339f-41f6-a6da-73c433815a58)
<br/>
Diagram 6.1
<br/>

Diagram 6.1 shows a typical connections for a dc brush motor driver sold in markets. Power supply voltage for the motor, $V_{Motor}$ is depended on the driver rating itself. 
Pin labeled **Dir** on the driver of Diagram 6.1 is the control for motor direction. Pin labeled **PWM** on the driver of Diagram 6.1 usualy is the driver enable gate controlled by PWM.
<br/>

<br/>

## Define and Initialize Peripheral
* Set pin direction to output at register TRISB - Page 120
* Set pin for digital I/O purpose at register ANSELB - Page 121
  - PWM peripheral is digital output.
* Set pin direction to output at register TRISC - Page 125
* Use macro to define motor direction can replace long register name in the code.
<br/>

```
#define motor_Left()        LATCbits.LATC3 = 1
#define motor_Right()       LATCbits.LATC3 = 0
```

```
    TRISBbits.TRISB0 = 0;    // Pin for PWM
    ANSELBbits.ANSB0 = 0;
    LATBbits.LATB0 = 0;
    
    TRISCbits.TRISC3 = 0;    // Pin for motor direction
    LATCbits.LATC0 = 0;
```
<br/>

## Example Program
<br/>
