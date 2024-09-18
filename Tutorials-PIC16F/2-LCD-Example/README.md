# LCD Example
![LCD-16x2](https://github.com/user-attachments/assets/bf3f153c-c3dd-41a5-95c8-8c75bc0625b9)
<br/>

Refer to 16x2 LCD [datasheet](https://academy.cba.mit.edu/classes/output_devices/44780.pdf).
<br/>

<br/>

![Schematic-LCD](https://github.com/user-attachments/assets/c45b4c68-6d0d-420f-8b05-b6eb6a1bb7a5)
<br/>
Schematic 2.1
<br/>

R5 is used to set the maximum brightness of LCD backlight. R/W pin and D0 - D4 are connected to the ground so the LCD can be used in write and 4-bit mode.
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
These delay function is required for bus timing as datasheet mentioned in page 49 and 58. The address set-up time, $t_{AS}$ is $40ns$ and interval for reliable LCD communication, $t_{cycE}$ is $1000ns$. 
$40ns$ delay can be achieved by using one NOP( ) instruction which is $125ns$, more than enough.
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

* E pin pulse function and send data function
  ```
  void lcd_EPulse(void);
  void lcd_WriteData(uint8_t data);
  ```

  ```
  void lcd_EPulse(void) {
      E_Pin = 1;
      lcd_DelayPulse();
    
      E_Pin = 0;
      lcd_DelayPulse();
  }
  
  void lcd_WriteData(uint8_t data) {
      // Send upper nibble data
      D7_Pin = (data >> 7) & 0x01;
      D6_Pin = (data >> 6) & 0x01;
      D5_Pin = (data >> 5) & 0x01;
      D4_Pin = (data >> 4) & 0x01;
      
      lcd_EPulse();
      
      // Send lower nibble data
      D7_Pin = (data >> 3) & 0x01;
      D6_Pin = (data >> 2) & 0x01;
      D5_Pin = (data >> 1) & 0x01;
      D4_Pin = data & 0x01;
      
      lcd_EPulse();
      
      delay_x1o5us(25);    // Execution time for instruction >37us - Page 24
                           // delay = 37us / 1.5us = 25
  }
  ```
<br/>

* Write to LCD function

  ```
  void lcd_PrintCmd(uint8_t command);
  void lcd_Initialize(void);
  void lcd_ClearAll(void);
  void lcd_Goto(uint8_t y, uint8_t x);
  void lcd_PrintChar(char character);
  void lcd_PrintString(char *string);
  ```

  ```
  void lcd_PrintCmd(uint8_t command) {
      RS_Pin = 0;
      lcd_DelaySetupTime();
      
      lcd_WriteData(command);
  }
  
  void lcd_Initialize(void) {
      delay_ms(10);           // Wait for LCD power supply rise time - Datasheet page 50
      
      // LCD command - Datasheet page 24
      lcd_PrintCmd(0x28);     // Set LCD to 4-bit mode
      lcd_PrintCmd(0x02);     // Set DDRAM address counter to 0
      lcd_PrintCmd(0x0C);     // Display is set ON, cursor is set OFF, cursor blink is set OFF
      lcd_PrintCmd(0x06);     // Cursor is set to shift right
      lcd_PrintCmd(0x01);     // Clear entire display
      lcd_PrintCmd(0x80);     // Set cursor back to home
      
      delay_x24o25us(63);     // Execution time to clear display instruction, lcd_PrintCmd(0x01) >1.52ms,
                              // delay = 1.52ms / 24.25us = 63
  }

  void lcd_ClearAll(void) {
      lcd_PrintCmd(0x02);
      lcd_PrintCmd(0x01);
      delay_x24o25us(63);
  }
  
  void lcd_Goto(uint8_t y, uint8_t x) {
      switch(y) {
          case 0:
              lcd_PrintCmd(0x80 + x);
              break;
          
          case 1:
              lcd_PrintCmd(0xC0 + x);
              break;
          
          default:
              lcd_PrintCmd(0x80 + x);
              break;
      }
  }
  
  void lcd_PrintChar(char character) {
      RS_Pin = 1;
      lcd_DelaySetupTime();
      
      lcd_WriteData(character);;
  }
  
  void lcd_PrintString(char *string) {
      while(*string!=0) {
          lcd_PrintChar(*string);
          string++;
      }
  }
  ```
<br/>

## Example Program

```
    void lcd_PrintInt32(int32_t number);
    void lcd_PrintDigitInt32(int32_t number, uint8_t noDigit, bool enSign, bool enZero);
```

```
void programInitialize(void) {
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
    
    lcd_Initialize();
    
    lcd_Goto(0, 0);
    lcd_PrintString("LCD Example 1.0");
}
```

```
void programLoop(void) {
    int32_t counter = 0;
    
    while(1) {
        lcd_Goto(1, 0);
        lcd_PrintDigitInt32(counter, 4, false, true);
        
        counter++;
        
        delay_ms(500);
    }
}

void lcd_PrintInt32(int32_t number) {
    uint8_t  i1 = 0,
             i2 = 0,
             totalDigit = 0;
    
    char numberRevChar[11]; // Declare array to store number in reverse char format
    char numberChar[11]; // Declare array to store number in char format
    
    // Initialise array
    memset(numberRevChar, 0, 11);
    memset(numberChar, 0, 11);
    
    if(number<0) { // Condition if number is negative value
        lcd_PrintChar('-');
        number = labs(number);
    }
    
    do { // Store a single number in reverse to numberRevChar[]
        int32_t tempN = number;
        number /= 10;
        char tempC = (char)(tempN -10 * number);
        numberRevChar[i1] = tempC + 48;
        i1++;
    } while(number);
    
    totalDigit = i1; // Get total number of digit
    
    for(i1=totalDigit, i2=0; i1>0; i1--, i2++) { // Reverse numberRevChar[]
        numberChar[i2] = numberRevChar[i1-1];
    }
    
    lcd_PrintString(numberChar);
}

void lcd_PrintDigitInt32(int32_t number, uint8_t noDigit, bool enSign, bool enZero) {
    uint8_t  i1 = 0,
             i2 = 0,
             totalDigit = 0;
    
    char numberRevChar[11]; // Declare array to store number in reverse char format
    char numberChar[11]; // Declare array to store number in char format
    
    // Initialise array
    memset(numberRevChar, 0, 11);
    memset(numberChar, 0, 11);
    
    if(number<0) { // Condition if number is negative value
        if(enSign) lcd_PrintChar('-');
        number = labs(number);
    } else {
        if(enSign) lcd_PrintChar(' ');
    }
    
    do { // Store a single number in reverse to numberRevChar[]
        int32_t tempN = number;
        number /= 10;
        char tempC = (char)(tempN -10 * number);
        numberRevChar[i1] = tempC + 48;
        i1++;
    } while(number);
    
    totalDigit = i1; // Get total number of digit
    
    for(i1=0; i1<(noDigit-totalDigit); i1++) {
        if(enZero) lcd_PrintChar('0');
        else lcd_PrintChar(' ');
    }
    
    for(i1=totalDigit, i2=0; i1>0; i1--, i2++) { // Reverse numberRevChar[]
        numberChar[i2] = numberRevChar[i1-1];
    }
    
    lcd_PrintString(numberChar);
}
```
<br/>

<br/>
