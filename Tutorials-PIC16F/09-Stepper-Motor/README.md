# Bipolar Stepper Motor

![Stepper-Motor-EM257](https://github.com/user-attachments/assets/9e7d37e2-90f5-4b76-ab52-3e1ae5d8dac5)
<br/>

Bipolar stepper motor is a bruhless motor which has a stator drived by two set of coils. Hence, a driver which can control two DC motor is needed to drive both coils. Refer to motor and driver specification for voltage and current rating.
<br/>

<br/>

![Diagram-Bipolar-Stepper-Motor](https://github.com/user-attachments/assets/834abaef-2383-4b4b-98f7-db8e2546a791)
<br/>
Diagram 9.1

Diagram 9.1 on the right is a simplified model of stepper motor using a single magnet pole as rotor for a $90^\circ$ full step rotation. 
The actual stepper motor has many magnet pole on the rotor and multiple coil to make a very small degree of step refer to its own datasheet. The typical wires arrangment respective to the coil windings is in Diagram 9.1 on the left.
<br/>

Rotation of stepper motor needs sequencial coil activation to move the rotor. There can be three mode of steps which are.
* Full step - Activation of one coil at one time.
  >$A \rightarrow B \rightarrow \overline{A} \rightarrow \overline{B}$
* Half step - Activation of both coil at one time to position the rotor pole in between two coils.
  >$A \rightarrow AB \rightarrow B \rightarrow \overline{A}B \rightarrow \overline{A} \rightarrow \overline{A}\overline{B} \rightarrow \overline{B} \rightarrow A\overline{B}$
* Micro step - Activation of coils required sophisticated driver to control current flow in the coil to achieved minute position of the rotor by using the same method of half step sequences.
<br/>

<br/>

![Circuit-Bipolar-Stepper-Motor](https://github.com/user-attachments/assets/2b538998-2047-4957-ae03-ff01379ccd49)
<br/>
Schematic 9.2

Schematic 9.2 shows a circuit of dual motor driver to drive bipolar stepper motor. $In_{1}$ and $In_{2}$ will control $M_{1}$ output while $In_{3}$ and $In_{4}$ will control $M_{2}$ output.
<br/>

<br/>

## Define and Initialize Peripheral

* Set pin direction to output at register TRISB - Page 120
* Set pin for digital I/O purpose at register ANSELB - Page 121
* Set pin direction to output at register TRISC - Page 125

  ```
  #define smotor_Out1        LATCbits.LATC1
  #define smotor_Out2        LATBbits.LATB0
  #define smotor_Out3        LATCbits.LATC4
  #define smotor_Out4        LATCbits.LATC3
  ```
  
  ```
      // Pin to input stepper motor driver
      TRISBbits.TRISB0 = 0;
      ANSELBbits.ANSB0 = 0;
      
      TRISCbits.TRISC1 = 0;
      TRISCbits.TRISC3 = 0;
      TRISCbits.TRISC4 = 0;
      
      LATBbits.LATB0 = 0;
      LATCbits.LATC1 = 0;
      LATCbits.LATC3 = 0;
      LATCbits.LATC4 = 0;
  ```
<br/>

## Create Function for Stepper Motor
  
* Stepper motor coil activation function.
  ```
  void smotor_Rest(void);
  void smotor_MoveStep(uint8_t step);
  ```
  
  ```
  // Set stepper motor driver at rest
  void smotor_Rest(void) {
      smotor_Out1 = 0;
      smotor_Out2 = 0;
      smotor_Out3 = 0;
      smotor_Out4 = 0;
  }
  
  // Set stepper motor half-step sequence
  void smotor_MoveStep(uint8_t step) {
      switch(step) {
          case 1: // A
              smotor_Out1 = 1;
              smotor_Out2 = 0;
              smotor_Out3 = 0;
              smotor_Out4 = 0;
              break;
              
          case 2: // AB
              smotor_Out1 = 1;
              smotor_Out2 = 0;
              smotor_Out3 = 1;
              smotor_Out4 = 0;
              break;
              
          case 3: // B
              smotor_Out1 = 0;
              smotor_Out2 = 0;
              smotor_Out3 = 1;
              smotor_Out4 = 0;
              break;
              
          case 4: // A!B
              smotor_Out1 = 0;
              smotor_Out2 = 1;
              smotor_Out3 = 1;
              smotor_Out4 = 0;
              break;
              
          case 5: // !A
              smotor_Out1 = 0;
              smotor_Out2 = 1;
              smotor_Out3 = 0;
              smotor_Out4 = 0;
              break;
              
          case 6: // !A!B
              smotor_Out1 = 0;
              smotor_Out2 = 1;
              smotor_Out3 = 0;
              smotor_Out4 = 1;
              break;
              
          case 7: // !B
              smotor_Out1 = 0;
              smotor_Out2 = 0;
              smotor_Out3 = 0;
              smotor_Out4 = 1;
              break;
              
          case 8: // A!B
              smotor_Out1 = 1;
              smotor_Out2 = 0;
              smotor_Out3 = 0;
              smotor_Out4 = 1;
              break;
              
          default:
              break;
      }
  }
  ```
<br/>

## Example Program

```
void programLoop(void) {
    lcd_Goto(0, 0);
    lcd_PrintString("Stepper Motor");
    
    lcd_Goto(1, 0);
    lcd_PrintDigitInt32(0, 8, true, true); // Display angle step on LCD
    
    uint8_t stepMotor = 1; // Variable for stepper motor sequence
    uint32_t delay = 10; // Variable for wait before next motor step
    int32_t angleStep = 0; // Variable to track angle step
    
    while(1) {
        while(!pb_Right) { // Rotate stepper motor clockwise
            stepMotor++; // Increment for step
            if(stepMotor>8) stepMotor = 1; // If step is larger then 8th then step will become 1st
            
            smotor_MoveStep(stepMotor); // Move stepper motor
            
            angleStep++; // Increment for distance
            
            lcd_Goto(1, 0);
            lcd_PrintDigitInt32(angleStep, 8, true, true); // Display angle step on LCD
            
            delay_ms(delay); // Wait before next step
            
            smotor_Rest();
        }
        
        while(!pb_Left) { // Rotate stepper motor counter clockwise
            stepMotor--; // Decrement for step
            if(stepMotor<1) stepMotor = 8; // If step is lesser then 1st then step will become 8th
            
            smotor_MoveStep(stepMotor); // Move stepper motor
            
            angleStep--; // Increment for distance
            
            lcd_Goto(1, 0);
            lcd_PrintDigitInt32(angleStep, 8, true, true); // Display angle step on LCD
            
            delay_ms(delay); // Wait before next step
            
            smotor_Rest();
        }
        
        if(!pb_Down) { // Set stepper motor to original angle position
            while(angleStep>0) {
                stepMotor--;
                if(stepMotor<1) stepMotor = 8;
                
                smotor_MoveStep(stepMotor);
                
                angleStep--;
                
                lcd_Goto(1, 0);
                lcd_PrintDigitInt32(angleStep, 8, true, true);
                
                delay_ms(delay);
                
                smotor_Rest();
            }
            
            while(angleStep<0) {
                stepMotor++;
                if(stepMotor>8) stepMotor = 1;
                
                smotor_MoveStep(stepMotor);
                
                angleStep++;
                
                lcd_Goto(1, 0);
                lcd_PrintDigitInt32(angleStep, 8, true, true);
                
                delay_ms(delay);
                
                smotor_Rest();
            }
        }
    }
}
```
<br/>

## MPLabX Code

* https://github.com/i9Workshop/StarterBoardV1-PIC16F1783-StepperMotor
<br/>

<br/>
