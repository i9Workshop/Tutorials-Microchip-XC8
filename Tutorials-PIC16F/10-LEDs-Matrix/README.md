# LEDs Matrix
LEDs matrix used [persistence of vision](https://en.wikipedia.org/wiki/Persistence_of_vision) effect of human eye to appear as each LEDs turned on at the same time. 
In fact, only LEDs that share the same common connection can be turned on at the same time.
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

```
    void ledMatrix_AllOff(void);
    void ledMatrix_SetDisplay(uint16_t ledWord);
```

```
void ledMatrix_AllOff(void) { // Turn off all LEDs
    led_VccColumn1 = 0;
    led_VccColumn2 = 0;
    led_VccColumn3 = 0;
    led_GndRow1 = 0;
    led_GndRow2 = 0;
    led_GndRow3 = 0;
}

void ledMatrix_SetDisplay(uint16_t ledWord) { // Set LED matrix using 9bit binary word
    uint16_t delay = 200;
    
    // First row
    
    ledMatrix_AllOff();
    
    led_VccColumn1 = (bool)(ledWord & 0b100000000);
    led_VccColumn2 = (bool)(ledWord & 0b010000000);
    led_VccColumn3 = (bool)(ledWord & 0b001000000);
    led_GndRow1 = 0;
    led_GndRow2 = 1;
    led_GndRow3 = 1;
    
    delay_x24o25us(delay);
    
    // Second row
    
    ledMatrix_AllOff();
    
    led_VccColumn1 = (bool)(ledWord & 0b000100000);
    led_VccColumn2 = (bool)(ledWord & 0b000010000);
    led_VccColumn3 = (bool)(ledWord & 0b000001000);
    led_GndRow1 = 1;
    led_GndRow2 = 0;
    led_GndRow3 = 1;
    
    delay_x24o25us(delay);
    
    // Third row
    
    ledMatrix_AllOff();
    
    led_VccColumn1 = (bool)(ledWord & 0b000000100);
    led_VccColumn2 = (bool)(ledWord & 0b000000010);
    led_VccColumn3 = (bool)(ledWord & 0b000000001);
    led_GndRow1 = 1;
    led_GndRow2 = 1;
    led_GndRow3 = 0;
    
    delay_x24o25us(delay);
}
```
<br/>

<br/>

## Loop Program

* LEDs swiping.
  ```
      uint8_t i = 0;
      
      for(i=0; i<50; i++) {
          ledMatrix_SetDisplay(0b100100100);
      }
      
      for(i=0; i<50; i++) {
          ledMatrix_SetDisplay(0b010010010);
      }
      
      for(i=0; i<50; i++) {
          ledMatrix_SetDisplay(0b001001001);
      }
      
      for(i=0; i<50; i++) {
          ledMatrix_SetDisplay(0b010010010);
      }
  ```
<br/>

* LEDs displaying push button and switch inputs.
  ```
  // Rearrange push buttons and switches input in 9bit binary number
  uint16_t input = (uint16_t)(!pb_No1 << 8) | (uint16_t)(!pb_No2 << 7) |
                   (uint16_t)(!sw_No1 << 5) | (uint16_t)(!sw_No2 << 4) |
                   (uint16_t)(!sw_No3 << 2) | (uint16_t)(!sw_No4 << 1);
  
  ledMatrix_SetDisplay(input);
  ```
<br/>

<br/>

## MPLabX Code

* https://github.com/i9Workshop/StarterSlaveBoardV1-PIC16F1783-LedSwiping
* https://github.com/i9Workshop/StarterSlaveBoardV1-PIC16F1783-LedReadPushButtonsAndSwitches
<br/>

<br/>

