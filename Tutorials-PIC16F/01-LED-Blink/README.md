# LED Blink

![Schematic-Led](https://github.com/user-attachments/assets/5d0bba85-4a6e-4db4-8cc8-58a231f12aa0)
<br/>
Schematic 1.1
<br/>

Deciding value for resistor R2 in Schematic 1.1 is depended on led D1 voltage drop which is the forward voltage, V<sub>F</sub>.
The brightness of led can be reduced by forward current, I<sub>F</sub> value therefor increasing the resistor value will dim the brigthness.
Refer to LED datasheet to avoid exceeding the maximum I<sub>F</sub>.
>$R1 = \text{ } \frac{V_{RB7}-V_F}{I_F}$
<br/>

## Initialize Peripheral
* Set pin direction to output at register TRISB - Page 120
* Set pin for digital I/O purpose at register ANSELB - Page 121
  - RB6 and RB7 does not connected to analog input peripheral - Page 10 and 11
* Set pin desired output by writing to register LATB - Page 120
* Output pin can be defined as another name desired.
<br/>

```
#define led1        LATBbits.LATB7
#define led2        LATBbits.LATB6
```

<br/>

```
    TRISB = 0b00000000;   // Set pin direction at bit 7th for RB7 and bit 6th for RB6.
    ANSELB = 0b00000000;  // Set pin for digital I/O purpose, bit 7th and 6th are ignored.
    LATB = 0b00000000;    // Set pin desired output at bit 7th for RB7 and bit 6th for RB6.
```
or
```
    TRISBbits.TRISB6 = 0;
    LATBbits.LATB6 = 0;
    
    TRISBbits.TRISB7 = 0;
    LATBbits.LATB7 = 0;
```
<br/>

## Loop Program
* Toggle pin output by using bitwise operand NOT, '~' then delay the process using loop statement.
  ```
      LATBbits.LATB6 = ~LATBbits.LATB6;
      LATBbits.LATB7 = ~LATBbits.LATB7;
      delay_ms(1000);
  ```
  or
  ```
      led1 = ~led1;
      led2 = ~led2;
      delay_ms(1000);
  ```
  <br/>

* Toggle pin output alternately with interval using loop statement.
  ```
      LATBbits.LATB6 = 1;
      LATBbits.LATB7 = 0;
      delay_ms(1000);
      
      LATBbits.LATB6 = 0;
      LATBbits.LATB7 = 1;
      delay_ms(1000);
  ```
  or
  ```
      led1 = 1;
      led2 = 0;
      delay_ms(1000);
      
      led1 = 0;
      led2 = 1;
      delay_ms(1000);
  ```
  <br/>

## MPLabX Code

* https://github.com/i9Workshop/StarterBoardV1-PIC16F1783-ClockConfigAndLedBlink
<br/>

<br/>
