# Servo Motor Angle

![Servo-Motor-SG90](https://github.com/user-attachments/assets/224cbf88-a894-4aaa-9177-ba7f51ed7456)
<br/>
Refer to SG90 servo motor [datasheet](http://www.ee.ic.ac.uk/pcheung/teaching/DE1_EE/stores/sg90_datasheet.pdf). 
Servo motor used PWM with period of 2ms to communicate with internal controller to send angle data. Angle data is read from the timing of on time, $T_{ON}$.

* $T_{ON}$ = 1ms, move the rotor to $-90^\circ$ position.
* $T_{ON}$ = 1.5ms, move the rotor to $0^\circ$ position.
* $T_{ON}$ = 2ms, move the rotor to $90^\circ$ position.
* Rotor position can be steered using $T_{ON}$ between 1ms to 2ms.
<br/>

![Circuit-Servo-Motor-Angle](https://github.com/user-attachments/assets/d8c74132-e34e-4e30-964f-c6ac0f7dd1dc)
<br/>
Circuit 8.1

Servo motor only needs power supply depended on its own specification usually 6V. RB0 is GPIO pin from microcontroller.
<br/>

<br/>

## Initialize Peripheral

* Set pin direction to output at register TRISB - Page 120
* Set pin for digital I/O purpose at register ANSELB - Page 121

  ```
  #define servo_PWM       LATBbits.LATB0
  ```
  
  ```
  // Pin for servo PWM
  TRISBbits.TRISB0 = 0;
  ANSELBbits.ANSB0 = 0;
  ```
<br/>

## Create Motor Function

Oscilloscope needed to observe PWM signal thus measure the duty cycle. Kindly donate to [i9 Workroom](https://i9workshop.github.io) for R&D.
<br/>

<br/>

## Example Program

<br/>

## MPLabX Code

* https://github.com/i9Workshop/StarterBoardV1-PIC16F1783-SevoMotorAngleUncalibratedPwm
<br/>
