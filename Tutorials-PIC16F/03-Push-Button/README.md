# Push Button
<br/>

![Schematic-Push-Buttons](https://github.com/user-attachments/assets/db733e14-a69b-4d1d-a9c7-73adee26ab04)
<br/>
Schematic 3.1
<br/>

Schematic 3.1 are circuits of active low push buttons. Program will be executed if button is pressed. C5 is used to remove bouncing mechanical noise at input pin which can also be remove by using delay in program. 
Deciding value for resistor R7 is depending on voltage at pin RA1, $V_{RA1}$ and current accros R7, $I_{R7}$. Refer to datasheet page 364.
* $I_{R7}$ will be MCU weak pull-up current, $I_{PUR}$ therefor
  >$I_{R7} = I_{PUR} = 140\mu A$
* Minimum $V_{RA1}$ will be input high voltage, $V_{IH}$ which is
  >$V_{RA1} = 0.8 \times{} V_{CC} = 0.8 \times{} 5V = 4V$
* Maximum value for R7 is
  >$R7 = \frac{V_{CC} - V_{MClr}}{I_{R1}} = \frac{5V - 4V}{140\mu A} = 7.1k\Omega$
* If R1 is more than $7.1k\Omega$, make sure $V_{MClr}$ does not fall below 4V.
* If R1 is less than $7.1k\Omega$, make sure pull down current accross it when button is pressed not high to cause interruption of MCU required current operation.
<br/>

## Define and Initialize Peripheral
* Set pin direction to input at register TRISA - Page 114
* Set pin for digital I/O purpose at register ANSELA - Page 115
<br/>

```
#define pb_Up       PORTAbits.RA1
#define pb_Down     PORTAbits.RA2
#define pb_Left     PORTAbits.RA3
#define pb_Right    PORTAbits.RA4
```

```
    TRISAbits.TRISA1 = 1;
    TRISAbits.TRISA2 = 1;
    TRISAbits.TRISA3 = 1;
    TRISAbits.TRISA4 = 1;
    
    ANSELAbits.ANSA1 = 0;
    ANSELAbits.ANSA2 = 0;
    ANSELAbits.ANSA3 = 0;
    ANSELAbits.ANSA4 = 0;
```
<br/>

## Read Pin Value
Reads from PORTA register to read pin digital value as stated in datasheet page 114. Use if statement to practically use the register as switch. Create delay fuction to debounce mechanical noise.
<br/>
```
    void pb_DelayDebounce(void);
```

```
// Delay to debounce mechanical noise
void pb_DelayDebounce(void) {
    delay_ms(200);
}
```

```
if(PORTAbits.RA1) { // Condition is true if pin RA1 is high
    // Do something if pin is high
    
    pb_DelayDebounce();
}

else if(!PORTAbits.RA1) { // Condition is true if pin RA1 is low
    // Do something if pin is low
    
    pb_DelayDebounce();
}
```
<br/>

## Example Program
```
    // Scan active low push buttons
    
    if(!pb_Up) {
        lcd_Goto(1, 0);
        lcd_PrintString("Up   "); // Print on LCD
        
        while(!pb_Up); // Hold program when button is pressed
        
        lcd_Goto(1, 0);
        lcd_PrintString("     "); // Print nothing on LCD
        
        pb_DelayDebounce(); // Wait for a while
    }
    
    if(!pb_Down) {
        lcd_Goto(1, 0);
        lcd_PrintString("Down ");
        
        while(!pb_Down);
        
        lcd_Goto(1, 0);
        lcd_PrintString("     ");
        
        pb_DelayDebounce();
    }
    
    if(!pb_Left) {
        lcd_Goto(1, 0);
        lcd_PrintString("Left ");
        
        while(!pb_Left);
        
        lcd_Goto(1, 0);
        lcd_PrintString("     ");
        
        pb_DelayDebounce();
    }
    
    if(!pb_Right) {
        lcd_Goto(1, 0);
        lcd_PrintString("Right");
        
        while(!pb_Right);
        
        lcd_Goto(1, 0);
        lcd_PrintString("     ");
        
        pb_DelayDebounce();
    }
```
<br/>

<br/>
