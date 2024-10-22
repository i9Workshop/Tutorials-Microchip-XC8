# LEDs Matrix
LEDs matrix used [persistence of vision](https://en.wikipedia.org/wiki/Persistence_of_vision) effect to appear as each LEDs turned on at the same time.
<br/>

![LED-Matrix-Schematic](https://github.com/user-attachments/assets/e9a5025c-eb2d-4959-af3a-1a166a27fa6a)
<br/>
Schematic 10.1

Schematic 10.1 shows the connection of LEDs for 3 x 3 matrix with common cathodes. Matrix connection allows LEDs to be controlled using less GPIO pins. 3 x 3 matrix use only 6 GPIO pins for 9 LEDs.
<br/>

<br/>

## Initialize Peripheral

* Set pin direction to output at register TRISA - Page 114
* Set pin for digital I/O purpose at register ANSELA - Page 115
* Defined output pin as another name desired.
<br/>

```
#define led_VccColumn1      LATAbits.LATA0
#define led_VccColumn2      LATAbits.LATA1
#define led_VccColumn3      LATAbits.LATA2
#define led_GndRow1         LATAbits.LATA3
#define led_GndRow2         LATAbits.LATA4
#define led_GndRow3         LATAbits.LATA5
    
#define pb_No1          PORTBbits.RB1
#define pb_No2          PORTBbits.RB0
    
#define sw_No1          PORTBbits.RB5
#define sw_No2          PORTBbits.RB4
#define sw_No3          PORTBbits.RB3
#define sw_No4          PORTBbits.RB2
```

```
    // Pins for LED matrix
    TRISA = 0;
    ANSELA = 0;
    LATA = 0;
    
    // Pins for push buttons and switches
    TRISB = 0x3F;
    ANSELB = 0;
```
<br/>

<br/>

## LEDs Display Function

<br/>

<br/>

## Loop Program

<br/>

<br/>

## MPLabX Code

<br/>

<br/>

