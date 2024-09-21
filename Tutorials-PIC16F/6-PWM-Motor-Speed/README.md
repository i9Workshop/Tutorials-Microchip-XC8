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
  - PWM is digital output.
* Set alternate pin function control register APFCON at CCP1SEL to use RB0 - Page 111
* Set pin direction to output at register TRISC - Page 125
* Use macro to define motor direction can replace long register name in the code.
  
  ```
  #define motor_Left()        LATCbits.LATC3 = 1
  #define motor_Right()       LATCbits.LATC3 = 0
  ```
  ```
      // Pin for PWM
      TRISBbits.TRISB0 = 0;
      ANSELBbits.ANSB0 = 0;
      APFCONbits.CCP1SEL = 1;  // Set alternate pin function to use RB0 for CCP1 output
      LATBbits.LATB0 = 0;

      // Pin for motor direction
      TRISCbits.TRISC3 = 0;
      LATCbits.LATC3 = 0;
  ```

<br/>

* Initialize timer 2 and PWM module for 10bit resolution. Refer to Table 25-1 in page 253.
  
  ```
  void motor_Initialize(void) {
      // Datasheet page 188
      T2CONbits.T2OUTPS = 0;      // Set timer 2 output postscaler ratio to 1:1
      T2CONbits.T2CKPS = 2;       // Set timer 2 clock prescaler to 16
      
      PR2 = 0xFF;                 // Set timer 2 period register to 0xFF
      
      T2CONbits.TMR2ON = 1;       // Turn on timer 2 module
      
      // Datasheet page 255
      CCP1CONbits.CCP1M = 12;     // Set CCP register to use PWM mode
  }
  ```
<br/>

## Set PWM Output to Pin
<br/>

## Example Program
<br/>
