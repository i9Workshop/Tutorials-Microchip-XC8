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
    LATBbits.LATB6 = 0;
    
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
    
    RS_Pin = 0;
    E_Pin = 0;
    D4_Pin = 0;
    D5_Pin = 0;
    D6_Pin = 0;
    D7_Pin = 0;
    
    TRISAbits.TRISA1 = 1;
    TRISAbits.TRISA2 = 1;
    TRISAbits.TRISA3 = 1;
    TRISAbits.TRISA4 = 1;
    
    ANSELAbits.ANSA1 = 0;
    ANSELAbits.ANSA2 = 0;
    ANSELAbits.ANSA3 = 0;
    ANSELAbits.ANSA4 = 0;
    
    // Pin for PWM
    TRISBbits.TRISB0 = 0;
    ANSELBbits.ANSB0 = 0;
    APFCONbits.CCP1SEL = 1;  // Set alternate pin function to use RB0 for CCP1 output
    LATBbits.LATB0 = 0;

    // Pin for motor direction
    TRISCbits.TRISC3 = 0;
    LATCbits.LATC3 = 0;
    
    lcd_Initialize();
    motor_Initialize();
}

void programLoop(void) {
    uint16_t motorSpeed = 0;
    
    lcd_Goto(0, 0);
    lcd_PrintString("PWM Motor Speed");
    
    lcd_Goto(1, 0);
    lcd_PrintDigitInt32(0, 4, false, true);
    
    while(1) {
        if(!pb_Up) {
            lcd_Goto(1, 6);
            lcd_PrintString("Up   "); // Print on LCD
            
            if(motorSpeed < 1023) motorSpeed +=25; // motorSpeed increment by 25
                                                   // Stop increment if motorSpeed is more than 1023
            
            if(motorSpeed > 1023) { // Condition to display maximum value of motorSpeed is 1023
                lcd_Goto(1, 0);
                lcd_PrintDigitInt32(1023, 4, false, true);
            }
            
            else {
                lcd_Goto(1, 0);
                lcd_PrintDigitInt32(motorSpeed, 4, false, true);
            }
            
            delay_ms(90); // Wait for a while
            
            lcd_Goto(1, 6);
            lcd_PrintString("     "); // Print nothing on LCD
            
            delay_ms(10); // Wait for a while
        }
        
        if(!pb_Down) {
            lcd_Goto(1, 6);
            lcd_PrintString("Down ");
            
            if(motorSpeed > 0) motorSpeed -=25; // motorSpeed decrement by 25
                                                // Stop decrement if motorSpeed is less than 0
            
            lcd_Goto(1, 0);
            lcd_PrintDigitInt32(motorSpeed, 4, false, true);
            
            delay_ms(90);
            
            lcd_Goto(1, 6);
            lcd_PrintString("     ");
            
            delay_ms(10);
        }
        
        if(!pb_Left) {
            lcd_Goto(1, 6);
            lcd_PrintString("Left ");
            
            motor_Left();
            
            if(motorSpeed > 1023) motor_SetSpeed(1023);
            else motor_SetSpeed(motorSpeed);
            
            while(!pb_Left);
            
            lcd_Goto(1, 6);
            lcd_PrintString("     ");
            
            pb_DelayDebounce();
        } else {
            motor_SetSpeed(0);
        }
        
        if(!pb_Right) {
            lcd_Goto(1, 6);
            lcd_PrintString("Right");
            
            motor_Right();
            
            if(motorSpeed > 1023) motor_SetSpeed(1023);
            else motor_SetSpeed(motorSpeed);
            
            while(!pb_Right);
            
            lcd_Goto(1, 6);
            lcd_PrintString("     ");
            
            pb_DelayDebounce();
        } else {
            motor_SetSpeed(0);
        }
    }
}


// Delay to debounce mechanical noise
void pb_DelayDebounce(void) {
    delay_ms(200);
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

void motor_Initialize(void) {
    // Datasheet page 188
    T2CONbits.T2OUTPS = 0;      // Set timer 2 output postscaler ratio to 1:1
    T2CONbits.T2CKPS = 2;       // Set timer 2 clock prescaler to 16
    
    PR2 = 0xFF;                 // Set timer 2 period register to 0xFF
    
    T2CONbits.TMR2ON = 1;       // Turn on timer 2 module
    
    // Datasheet page 255
    CCP1CONbits.CCP1M = 12;     // Set CCP register to use PWM mode
}

void motor_SetSpeed(uint16_t pwm) {
    CCPR1L = (uint8_t)(pwm>>2);     // CCPR1L is the MSB of the PWM duty cycle
    CCP1CONbits.DC1B = pwm & 0x03;  // DC1B is the LSB of the PWM duty cycle
}
