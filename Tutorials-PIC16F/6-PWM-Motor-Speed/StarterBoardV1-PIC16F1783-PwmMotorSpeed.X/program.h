#ifndef program_H
#define	program_H

#include <xc.h>

#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#ifdef	__cplusplus
extern "C" {
#endif
    
    
#define led1        LATBbits.LATB6
#define led2        LATBbits.LATB7

#define RS_Pin      LATBbits.LATB5
#define E_Pin       LATBbits.LATB4
#define D4_Pin      LATBbits.LATB3
#define D5_Pin      LATBbits.LATB2
#define D6_Pin      LATBbits.LATB1
#define D7_Pin      LATCbits.LATC5
    
#define pb_Up       PORTAbits.RA1
#define pb_Down     PORTAbits.RA2
#define pb_Left     PORTAbits.RA3
#define pb_Right    PORTAbits.RA4
    
#define motor_Left()        LATCbits.LATC3 = 1;     // Use macro to define
#define motor_Right()       LATCbits.LATC3 = 0;


    void delay_x1o5us(uint8_t delay);
    void delay_x24o25us(uint16_t delay);
    void delay_ms(uint32_t delay);
    
    void programInitialize(void);
    void programLoop(void);
    
    void pb_DelayDebounce(void);
    
    void lcd_DelaySetupTime(void);
    void lcd_DelayPulse(void);
    void lcd_EPulse(void);
    void lcd_WriteData(uint8_t data);
    void lcd_PrintCmd(uint8_t command);
    void lcd_Initialize(void);
    void lcd_ClearAll(void);
    void lcd_Goto(uint8_t y, uint8_t x);
    void lcd_PrintChar(char character);
    void lcd_PrintString(char *string);
    void lcd_PrintInt32(int32_t number);
    void lcd_PrintDigitInt32(int32_t number, uint8_t noDigit, bool enSign, bool enZero);
    
    void motor_Initialize(void);
    void motor_SetSpeed(uint16_t pwm);
    

#ifdef	__cplusplus
}
#endif

#endif	/* program_H */
