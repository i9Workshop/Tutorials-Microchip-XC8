# Pulse Width Modulation - Motor Speed

![Motor-DC-Brush-1](https://github.com/user-attachments/assets/8efb1921-d0e7-4e3f-af0b-922a036f3b66)
<br/>
DC brush motor rotation speed can be controled by using PWM. 
DC brush motor uses very high power supply than MCU thus a driver circuit is needed to control direction and speed. 
Saperation of driver and MCU circuitory adds the advantage which protects the MCU from damage if fault occurs at driver circuit.
<br/>

![Circuit-DC-Brush-Motor-CCP](https://github.com/user-attachments/assets/aea730a0-2f99-4c37-a1b5-112f4bb2c3d4)
<br/>
Circuit 6.1
<br/>

Circuit 6.1 shows a typical connections for a dc brush motor driver sold in markets. Power supply voltage for the motor, $V_{Motor}$ is depended on both driver and motor rating itself. 
Pin labeled **Dir** on the driver of Circuit 6.1 is the control for motor direction. Pin labeled **PWM** on the driver of Circuit 6.1 usualy is the driver enable gate controlled by PWM.
<br/>

<br/>

## Define and Initialize Peripheral

* Set pin direction to output at register TRISB - Page 120
* Set pin for digital I/O purpose at register ANSELB - Page 121
  - PWM is digital square wave output.
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

* Initialize timer 2 and CCP module for PWM using 10bit resolution. Refer to Table 25-1 in page 253.
  
  ```
      void motor_Initialize(void);
  ```
  ```
  void motor_Initialize(void) {
      // Datasheet page 188
      T2CONbits.T2OUTPS = 0;      // Set timer 2 output postscaler ratio to 1:1
      T2CONbits.T2CKPS = 2;       // Set timer 2 clock prescaler to 16
      
      PR2 = 0xFF;                 // Set timer 2 period register to 0xFF - Page 189
      
      CCP1CONbits.CCP1M = 12;     // Set CCP register to use PWM mode - Page 255
      
      T2CONbits.TMR2ON = 1;       // Turn on timer 2 module - Page 188
      
      delay_x1o5us(2); // Wait for timer 2 and CCP module configuration - Page 373 from I/O pin timing
		       // Tioz = 2us
  }
  ```
<br/>

## Set PWM Output to Pin

* Duty cycle of 10bit PWM module is between 0 to 1023.
* Use 16bit data type of a variable then shift it to the register CCPR1L for MSB part and DC1B for LSB part.
  
  ```
      void motor_SetSpeed(uint16_t pwm);
  ```
  ```
  void motor_SetSpeed(uint16_t pwm) {
      CCPR1L = (uint8_t)(pwm>>2);     // CCPR1L is the MSB of the PWM duty cycle - Page 252
      CCP1CONbits.DC1B = pwm & 0x03;  // DC1B is the LSB of the PWM duty cycle - Page 255
  }
  ```
<br/>

## Example Program

```
void programLoop(void) {
    uint16_t motorSpeed = 0;
    
    lcd_Goto(0, 0);
    lcd_PrintString("PWM Motor Speed");
    
    lcd_Goto(1, 0);
    lcd_PrintDigitInt32(0, 4, false, true);
    
    while(1) {
        if(!pb_Up) {
            lcd_Goto(1, 6);
            lcd_PrintString("Up   "); // Print on LCD
            
            if(motorSpeed<1023) motorSpeed +=25; // motorSpeed increment by 25
            
            if(motorSpeed > 1023) {
                lcd_Goto(1, 0);
                lcd_PrintDigitInt32(1023, 4, false, true);
            }
            
            else {
                lcd_Goto(1, 0);
                lcd_PrintDigitInt32(motorSpeed, 4, false, true);
            }
            
            delay_ms(90); // Wait for a while
            
            lcd_Goto(1, 6);
            lcd_PrintString("     "); // Print nothing on LCD
            
            delay_ms(10); // Wait for a while
        }
        
        if(!pb_Down) {
            lcd_Goto(1, 6);
            lcd_PrintString("Down ");
            
            if(motorSpeed>0) motorSpeed -=25; // motorSpeed decrement by 25
            
            lcd_Goto(1, 0);
            lcd_PrintDigitInt32(motorSpeed, 4, false, true);
            
            delay_ms(90);
            
            lcd_Goto(1, 6);
            lcd_PrintString("     ");
            
            delay_ms(10);
        }
        
        if(!pb_Left) {
            lcd_Goto(1, 6);
            lcd_PrintString("Left ");
            
            motor_Left();
            if(motorSpeed > 1023) motor_SetSpeed(1023);
            else motor_SetSpeed(motorSpeed);
            
            while(!pb_Left);
            
            lcd_Goto(1, 6);
            lcd_PrintString("     ");
            
            pb_DelayDebounce();
        } else {
            motor_SetSpeed(0);
        }
        
        if(!pb_Right) {
            lcd_Goto(1, 6);
            lcd_PrintString("Right");
            
            motor_Right();
            if(motorSpeed > 1023) motor_SetSpeed(1023);
            else motor_SetSpeed(motorSpeed);
            
            while(!pb_Right);
            
            lcd_Goto(1, 6);
            lcd_PrintString("     ");
            
            pb_DelayDebounce();
        } else {
            motor_SetSpeed(0);
        }
    }
}
```
<br/>

## MPLabX Code

* https://github.com/i9Workshop/StarterBoardV1-PIC16F1783-PwmMotorSpeed
<br/>

<br/>
