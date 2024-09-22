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
    
    TRISBbits.TRISB7 = 0;
    LATBbits.LATB7 = 0;
}

void programLoop(void) {
    led_Blink2p1();
}


void led_Blink1p0(void) {
    LATBbits.LATB6 = ~LATBbits.LATB6;
    LATBbits.LATB7 = ~LATBbits.LATB7;
    delay_ms(500);
}

void led_Blink1p1(void) {
    led1 = ~led1;
    led2 = ~led2;
    delay_ms(500);
}

void led_Blink2p0(void) {
    LATBbits.LATB6 = 1;
    LATBbits.LATB7 = 0;
    delay_ms(500);
    
    LATBbits.LATB6 = 0;
    LATBbits.LATB7 = 1;
    delay_ms(500);
}

void led_Blink2p1(void) {
    led1 = 1;
    led2 = 0;
    delay_ms(500);
    
    led1 = 0;
    led2 = 1;
    delay_ms(500);
}
