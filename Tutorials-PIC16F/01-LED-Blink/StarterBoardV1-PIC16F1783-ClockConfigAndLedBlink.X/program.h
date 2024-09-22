#ifndef program_H
#define	program_H

#include <xc.h>

#ifdef	__cplusplus
extern "C" {
#endif
    
    
#define led1        LATBbits.LATB7
#define led2        LATBbits.LATB6


    void delay_x1o5us(uint8_t delay);
    void delay_x24o25us(uint16_t delay);
    void delay_ms(uint32_t delay);
    
    void programInitialize(void);
    void programLoop(void);
    
    void led_Blink1p0(void);
    void led_Blink1p1(void);
    void led_Blink2p0(void);
    void led_Blink2p1(void);
    

#ifdef	__cplusplus
}
#endif

#endif	/* program_H */
