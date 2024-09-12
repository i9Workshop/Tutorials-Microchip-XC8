# LED Blink
![LED-Schematic](https://github.com/user-attachments/assets/96a027a4-b688-44f0-92b1-194a3af776bf)
<br/>

Deciding value for resistor R1 is depended on led D1 voltage drop which is the forward voltage, V<sub>F</sub>.
The brightness of led can be reduced by forward current, I<sub>F</sub> value therefor increasing the resistor value will dim the brigthness.
Refer to LED datasheet to avoid exceeding the maximum I<sub>F</sub>.
>R1 = (V<sub>RB7</sub> - V<sub>F</sub>) / I<sub>F</sub>
<br/>

## Initialize Peripheral
* Set pin direction to output at register TRISB - Page 120
* Set pin for digital I/O at register ANSELB - Page 121
  - RB6 and RB7 does not connected to analog input register - Page 10 and 11
* Set pin desired output by writing to register LATB - Page 120
<br/>

```
    TRISBbits.TRISB6 = 0;
    LATBbits.LATB6 = 0;
    
    LATBbits.LATB7 = 0;
    TRISBbits.TRISB7 = 0;
```

## Loop Program
<br/>
