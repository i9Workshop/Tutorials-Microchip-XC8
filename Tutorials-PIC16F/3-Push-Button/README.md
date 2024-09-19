# Push Button
<br/>

![Schematic-Push-Buttons](https://github.com/user-attachments/assets/70e3f197-adb4-4834-838a-030b79877f63)
<br/>
Schematic 3.1
<br/>

## Define and Initialize Peripheral
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
```

```
<br/>

## Example Program
```
    // Scan push buttons
    
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
