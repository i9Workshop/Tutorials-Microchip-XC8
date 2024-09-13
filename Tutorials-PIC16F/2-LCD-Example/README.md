# LCD Example
![LCD-16x2](https://github.com/user-attachments/assets/bf3f153c-c3dd-41a5-95c8-8c75bc0625b9)
<br/>

Refer to 16x2 LCD [datasheet](https://academy.cba.mit.edu/classes/output_devices/44780.pdf).
<br/>
<br/>

![Schematic-LCD](https://github.com/user-attachments/assets/ef843a07-8950-4568-8f80-0b1aa432c005)
<br/>
Schematic 2
<br/>

R5 is used to set the minimum brightness of LCD backlight. R/W pin and D0 - D4 are connected to the ground so the LCD can be used in write and 4-bit mode.
<br/>

<br/>

## Define and Initialize Peripheral
* Writing on LCD only use pins as digital output.
* Set pin direction to output at register TRISB - Page 120
* Set pin for digital I/O purpose at register ANSELB - Page 121
* Set pin direction to output at register TRISC - Page 125
<br/>

```
#define RS_Pin      LATBbits.LATB5
#define E_Pin       LATBbits.LATB4
#define D4_Pin      LATBbits.LATB3
#define D5_Pin      LATBbits.LATB2
#define D6_Pin      LATBbits.LATB1
#define D7_Pin      LATCbits.LATC5
```

```
    TRISBbits.TRISB5 = 0;
    TRISBbits.TRISB4 = 0;
    TRISBbits.TRISB3 = 0;
    TRISBbits.TRISB2 = 0;
    TRISBbits.TRISB1 = 0;
    TRISCbits.TRISC5 = 0;
    
    ANSELBbits.ANSB5 = 0;
    ANSELBbits.ANSB4 = 0;
    ANSELBbits.ANSB3 = 0;
    ANSELBbits.ANSB2 = 0;
    ANSELBbits.ANSB1 = 0;
    
    RS_Pin = 0;
    E_Pin = 0;
    D4_Pin = 0;
    D5_Pin = 0;
    D6_Pin = 0;
    D7_Pin = 0;
```
<br/>

## Create LCD Functions
These delay function is required as datasheet mentioned in page 49 and 58. The address set-up time, $t_{AS}$ is $60ns$ and interval for reliable lcd communication, $t_{cycE}$ is $1000ns$. 
$60ns$ delay can be achieved by using one NOP( ) instruction which is $125ns$, more than enough.
Since, the enable pulse width, $PW_{EH}$ timing is $450ns$, more than $500ns$ can be used for a pulse width delay. 
Function delay_x1p5us(1) is the shortest delay timing, more than enough to achieved required $PW_{EH}$.
<br/>

```
    void lcd_DelaySetupTime(void);
    void lcd_DelayPulse(void);
```

```
void lcd_DelaySetupTime(void) {
    NOP();
}

void lcd_DelayPulse(void) {
    delay_x1p5us(1);
}
```
<br/>

These fuctions will be used to control pin RS, E and all data pins D4, D5, D6 and D7 on LCD.
<br/>

* E pin pulse function
```
    void lcd_EPulse(void);
```

```
void lcd_EPulse(void) {
    E_Pin = 1;
    lcd_DelayPulse();
    
    E_Pin = 0;
    lcd_DelayPulse();
}
```
<br/>

## Example Program
<br/>

```

```
<br/>

<br/>
