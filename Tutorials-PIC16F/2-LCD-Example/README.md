# LCD Example
![LCD-16x2](https://github.com/user-attachments/assets/bf3f153c-c3dd-41a5-95c8-8c75bc0625b9)
<br/>

Refer to 16x2 LCD [datasheet](https://academy.cba.mit.edu/classes/output_devices/44780.pdf).
<br/>

![Schematic-LCD](https://github.com/user-attachments/assets/ef843a07-8950-4568-8f80-0b1aa432c005)
<br/>
Schematic 2
<br/>

R5 is used to set the minimum brightness of LCD backlight. D0 - D4 are connected to the ground so the LCD can be used in 4-bit mode.
<br/>

<br/>

## Initialize Peripheral
* Writing on LCD only use pins as digital output.
* Set pin direction to output at register TRISB - Page 120
* Set pin for digital I/O purpose at register ANSELB - Page 121
* Set pin direction to output at register TRISC - Page 125
<br/>

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
    
    LATBbits.LATB5 = 0;
    LATBbits.LATB4 = 0;
    LATBbits.LATB3 = 0;
    LATBbits.LATB2 = 0;
    LATBbits.LATB1 = 0;
    LATCbits.LATC5 = 0;
```
<br/>

## Create LCD Functions
This delay function is required as datasheet mentioned in page 49, the interval for reliable lcd communication, $t_{cycE}$ is $1000ns$. Since, the enable pulse width, $PW_{EH}$ 
timing is $450ns$, more than $500ns$ can be used for a pulse width delay. Function delay_x1p5us(1) is the shortest timing, more than enough to achieved required $PW_{EH}$.
<br/>

```
void lcdDelay(void) {
    delay_x1p5us(1);
}
```
<br/>

These fuctions will be used to control pin RS and E on LCD.
<br/>

```

```
<br/>

## Loop Program
<br/>

```

```
<br/>

<br/>
