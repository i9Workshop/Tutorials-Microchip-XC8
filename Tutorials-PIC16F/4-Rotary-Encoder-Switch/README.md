# Rotary Encoder Switch
![RES-1](https://github.com/user-attachments/assets/ae58243e-5199-4a48-b2e9-a9a76bc397ba)
![RES-2](https://github.com/user-attachments/assets/a1f6082f-09ba-4ee3-b585-bb08a92fb0f4)
<br/>
This rotary encoder has two clock outputs A and B, equiped with a pressable knob switch. Both clock outputs can be used to determine the rotation direction. 
Refer to rotary encoder switch [datasheet](https://docs.rs-online.com/6487/0900766b813ecfbe.pdf).
<br/>

<br/>

Schematic 4.1
<br/>
<br/>
Schematic 4.1 shows the circuitory of rotary encoder switch which are same as [push button circuit](https://github.com/i9Workshop/Tutorials-Microchip-XC8/tree/main/Tutorials-PIC16F/3-Push-Button) in Schematic 3.1.<br/>
The value for debounce capacitor is suggested in datasheet page 2.
<br/>

<br/>

## Define and Initialize Peripheral
* Set pin direction to output at register TRISA - Page 114
* Set pin for digital I/O purpose at register ANSELA - Page 115
* Set pin direction to output at register TRISC - Page 125
<br/>

```
#define res_Sw          PORTAbits.RA5
#define res_ClkA        PORTCbits.RC0
#define res_ClkB        PORTCbits.RC2
```

```
    TRISAbits.TRISA5 = 1;
    TRISCbits.TRISC0 = 1;
    TRISCbits.TRISC2 = 1;
    
    ANSELAbits.ANSA5 = 0;
```
<br/>

## Read Encoder Switch and Clock Pulse
* Method to read the switch is same as push button.
  ```
      if(!res_Sw) {
          led1 = 1;
          pb_DelayDebounce();
      }
      
      else {
          led1 = 0;
      }
  ```
<br/>

* Use bitwise operand left shift, '<<' to read the clock pulse thus determine the rotation direction.
  ```
      uint8_t encoderData = ((res_ClkA<<1) | res_ClkB) & 0x03; // Clock pulse is written into 8bits data, encoderData
      
      if(encoderData==0x03) { // Condition if both clock are high
          // Do nothing
      }
      
      else if(encoderData==0x02) { // Condition if clock A start first
          lcd_Goto(1, 0);
          lcd_PrintString("CW ");
          
          pb_DelayDebounce();
          
          lcd_Goto(1, 0);
          lcd_PrintString("   ");
      }
      
      else if(encoderData==0x01) { // Condition if clock B start first
          lcd_Goto(1, 0);
          lcd_PrintString("CCW");
          
          pb_DelayDebounce();
          
          lcd_Goto(1, 0);
          lcd_PrintString("   ");
      }
  ```
<br/>

## Example Program
```
void programLoop(void) {
    uint8_t encoderData = 0;
    uint16_t counter = 0;
    
    lcd_Goto(0, 0);
    lcd_PrintString("Rotary Encoder");
    
    lcd_Goto(1, 0);
    lcd_PrintDigitInt32(0, 5, false, true);
    
    while(1) {
        if(!res_Sw) {
            led1 = 1;
            pb_DelayDebounce();
        } else {
            led1 = 0;
        }
        
        encoderData = ((res_ClkA<<1) | res_ClkB) & 0x03; // Clock pulse is written into 8bits data, encoderData
        
        if(encoderData==0x03) {
            // Do nothing
        }
        
        else if(encoderData==0x02) { // Condition if clock A start first
            if(counter<60000) counter++;
            
            lcd_Goto(1, 0);
            lcd_PrintDigitInt32(counter, 5, false, true);
            
            lcd_Goto(1, 6);
            lcd_PrintString("CW ");
            
            delay_ms(50);
        }
        
        else if(encoderData==0x01) { // Condition if clock B start first
            if(counter>0) counter--;
            
            lcd_Goto(1, 0);
            lcd_PrintDigitInt32(counter, 5, false, true);
            
            lcd_Goto(1, 6);
            lcd_PrintString("CCW");
            
            delay_ms(50);
        }
    }
}
```
<br/>
