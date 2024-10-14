# Programmable Switch Mode Controller - Motor Speed

<br/>

Programmable Switch Mode Controller, PSMC is a high-performance pulse width modulator, PWM that can be configured to operate in one of several modes to support single or multiple phase applications. 
PSMC module has 16bit duty cycle resolution. PSMC module has its own timer thus can free up timer 2 module for another purpose. 
Besides that, PSMC can be used to control Electronics Speed Controller, ESC a driver for three phase brushless, BLDC motor.
<br/>

![Circuit-DC-Brush-Motor-PSMC](https://github.com/user-attachments/assets/71e53762-b541-472e-90a0-ca323b06d60e)
<br/>
Circuit 7.1

Refer to tutorial PWM for [DC brush motor speed](https://github.com/i9Workshop/Tutorials-Microchip-XC8/tree/main/Tutorials-PIC16F/06-PWM-Motor-Speed).
<br/>

<br/>

## Define and Initialize Peripheral

* Set pin direction to output at register TRISB - Page 120
* Set pin for digital I/O purpose at register ANSELB - Page 121
* Set pin direction to output at register TRISC - Page 125
* Use macro to define motor direction can replace long register name in the code.
  
  ```
  #define motor_Left()        LATBbits.LATB0 = 1;
  #define motor_Right()       LATBbits.LATB0 = 0;
  ```
  
  ```
      // Pin for motor direction
      TRISBbits.TRISB0 = 0;
      ANSELBbits.ANSB0 = 0;
      LATBbits.LATB0 = 0;
      
      // Pin for motor PWM
      TRISCbits.TRISC1 = 0;
      LATCbits.LATC1 = 0;
  ```
<br/>

<br/>

## Create Motor Functions

* RC1 use PSMC1B output thus complementary output pwm is needed - Page 11 and 200

* Initialize PSMC module for motor
  
  ```
      void motor_Initialize(void);
  ```
  
  ```
  void motor_Initialize(void) {
      // PSMC module 1 setups
      
      // Page 223
      PSMC1CONbits.PSMC1EN = 1; // Set enable PSMC1 module
      PSMC1CONbits.P1MODE = 1; // Set PSMC1 operating mode to single PWM with complementary output
      
      // Page 226
      PSMC1CLKbits.P1CPRE = 0; // Set PSMC1 clock pre-scaler to frequency/1
      PSMC1CLKbits.P1CSRC = 0; // Set PSMC1 clock source to FOSC
      
      PSMC1OENbits.P1OEB = 1; // PWM output is active on PSMC1 output B pin - Page 226
      PSMC1POLbits.P1POLB = 1; // Set PSMC1 output B polarity to active high - Page 227
      
      PSMC1PHSbits.P1PHST = 1; // Set rising edge to occur when PSMC1TMR = PSMC1PH - Page 229
      PSMC1DCSbits.P1DCST = 1; // Set falling edge to occur when PSMC1TMR = PSMC1DC - Page 230
      PSMC1PRSbits.P1PRST = 1; // Set period event will occur and PSMC1TMR will reset when PSMC1TMR = PSMC1PR - Page 231
      
      PSMC1STR0bits.P1STRB = 1; // Set PWM steering PSMC1B output to active on pin PSMC1B - Page 241
      
      // 16bit phase count for rising edge - Page 236
      PSMC1PHH = 0;
      PSMC1PHL = 0;
      
      // 16bit period time - Page 238
      PSMC1PRH = 0xFF;
      PSMC1PRL = 0xFF;
  }
  ```

* Set PWM function
  
  ```
      void motor_SetSpeed(uint16_t pwm);
  ```
  
  ```
  void motor_SetSpeed(uint16_t pwm) {
      // 16bit duty cycle count for falling edge - Page 237
      PSMC1DCH = (uint8_t)(pwm >> 8);
      PSMC1DCL = (uint8_t)pwm;
      
      PSMC1CONbits.PSMC1LD = 1; // Set enable PSMC1 update ready to load buffer - Page 223
  }
  ```
<br/>

<br/>

## Example Program

```
void programInitialize(void) {
    lcd_Initialize();
    motor_Initialize();
}
```

```
void programLoop(void) {
    uint32_t motorSpeed = 0;
    
    motor_SetSpeed((uint16_t)motorSpeed);
    
    lcd_Goto(0, 0);
    lcd_PrintString("PWM Motor Speed");
    
    lcd_Goto(1, 0);
    lcd_PrintDigitInt32((uint16_t)motorSpeed, 5, false, true);
    
    while(1) {
        if(!pb_Up) {
            lcd_Goto(1, 6);
            lcd_PrintString("Up   "); // Print on LCD
            
            if(motorSpeed < 65535) motorSpeed +=1000; // motorSpeed increment by 1000
                                                      // Stop increment if motorSpeed is more than 65535
            
            if(motorSpeed > 65535) motorSpeed = 65000; // Set maximum value for motor speed is 65000
            
            lcd_Goto(1, 0);
            lcd_PrintDigitInt32((uint16_t)motorSpeed, 5, false, true);
            
            delay_ms(90); // Wait for a while
            
            lcd_Goto(1, 6);
            lcd_PrintString("     "); // Print nothing on LCD
            
            delay_ms(10); // Wait for a while
        }
        
        if(!pb_Down) {
            lcd_Goto(1, 6);
            lcd_PrintString("Down ");
            
            if(motorSpeed > 0) motorSpeed -=1000; // motorSpeed decrement by 1000
                                                  // Stop decrement if motorSpeed is less than 0
            
            lcd_Goto(1, 0);
            lcd_PrintDigitInt32((uint16_t)motorSpeed, 5, false, true);
            
            delay_ms(90);
            
            lcd_Goto(1, 6);
            lcd_PrintString("     ");
            
            delay_ms(10);
        }
        
        if(!pb_Left) {
            lcd_Goto(1, 6);
            lcd_PrintString("Left ");
            
            if(motorSpeed > 65535) motor_SetSpeed(65535);
            else motor_SetSpeed((uint16_t)motorSpeed);
            
            motor_Left();
            
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
            
            if(motorSpeed > 65535) motor_SetSpeed(65535);
            else motor_SetSpeed((uint16_t)motorSpeed);
            
            motor_Right();
            
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

<br/>

## MPLabX Code

* https://github.com/i9Workshop/StarterBoardV1-PIC16F1783-PsmcMotorSpeed
<br/>

<br/>
