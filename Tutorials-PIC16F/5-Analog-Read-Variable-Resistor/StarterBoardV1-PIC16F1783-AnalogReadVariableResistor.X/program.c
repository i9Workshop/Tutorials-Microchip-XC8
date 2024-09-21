#include "program.h"


// Delay x1.5us
void delay_x1o5us(uint8_t delay) {
    for(uint8_t i=0; i<delay; i++) NOP();
}

// Delay x24.25us
void delay_x24o25us(uint16_t delay) {
    for(uint16_t i=0; i<delay; i++) delay_x1o5us(15);
}

// Delay x1ms
void delay_ms(uint32_t delay) {
    for(uint32_t i=0; i<delay; i++) delay_x24o25us(41);
}


void programInitialize(void) {
    TRISBbits.TRISB6 = 0;
    TRISBbits.TRISB7 = 0;
    
    led1 = 0;
    led2 = 0;
    
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
    
    TRISAbits.TRISA0 = 1;
    ANSELAbits.ANSA0 = 1;
    
    RS_Pin = 0;
    E_Pin = 0;
    D4_Pin = 0;
    D5_Pin = 0;
    D6_Pin = 0;
    D7_Pin = 0;
    
    lcd_Initialize();
    var_Initialize();
}

void programLoop(void) {
    lcd_Goto(0, 0);
    lcd_PrintString("Var Resistor");
    
    lcd_Goto(1, 0);
    lcd_PrintDigitInt32(0, 4, false, true);
    
    while(1) {
        led1 = ~led1; // LCD refresh and read variable resistor voltage rate indicator
        
        uint16_t varValue = var_Read(); // read digital value of analog input
        
        lcd_Goto(1, 0);
        lcd_PrintDigitInt32(varValue, 4, false, true);
        
        delay_ms(50); // LCD refresh and read variable resistor voltage rate
    }
}


void lcd_DelaySetupTime(void) {
    // China TGK LCD delay
    delay_x1o5us(200);
}

void lcd_DelayPulse(void) {
    // China TGK LCD delay
    delay_x1o5us(200);
}

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
    
    delay_x1o5us(25);   // Execution time for instruction >37us - Page 24
                        // delay = 37us / 1.5us = 25
}

void lcd_PrintCmd(uint8_t command) {
    RS_Pin = 0;
    lcd_DelaySetupTime();
    
    lcd_WriteData(command);
}

void lcd_Initialize(void) {
    delay_ms(10);           // Wait for LCD power supply rise time - Datasheet page 50
    
    // China TGK LCD reset process
    lcd_PrintCmd(0x33);
    lcd_PrintCmd(0x32);
    
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
    
    lcd_WriteData(character);
}

void lcd_PrintString(char *string) {
    while(*string!=0) {
        lcd_PrintChar(*string);
        string++;
    }
}

void lcd_PrintInt32(int32_t number) {
    uint8_t i1 = 0,
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
    uint8_t i1 = 0,
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

void var_Initialize(void) {
    // Datasheet page 147
    ADCON0bits.ADON = 0;    // Turn off ADC module
    ADCON0bits.ADRMD = 0;   // Set ADC data format for a 12bit result
    
    // Datasheet page 148
    ADCON1bits.ADFM = 0;    // Set ADC result to use sign-magnitude format
    ADCON1bits.ADCS = 0;    // Set ADC peripheral clock to FOSC/2
    ADCON1bits.ADPREF = 0;  // Set ADC positive voltage reference to MCU's VDD
    ADCON1bits.ADNREF = 0;  // Set ADC negative voltage reference to MCU's VSS
    
    // Datasheet page 149
    ADCON2bits.TRIGSEL = 0; // Disable auto-conversion trigger source
}

uint16_t var_Read(void) {
    ADCON0bits.CHS = 0;     // Set ADC positive differential input to channel 0
    ADCON2bits.CHSN = 15;   // Set ADC negative differential input to ADNREF
    
    ADCON0bits.ADON = 1;    // Turn on ADC module
    
    delay_x1o5us(4);        // Wait acquisition time - Page 152 and 153
                            // delay = 4.88us / 1.5us = 3.25, use 4 to achieve more than 4.88us
    
    ADCON0bits.GO = 1;      // Start conversion
    while(ADCON0bits.GO);   // Wait for ADC conversion to complete
    
    // Return ADC result
    return (uint16_t)(ADRESH<<4) | (ADRESH>>4);
}
