/* Register CONFIG1 */
#pragma config FCMEN = OFF        // Fail-safe clock monitor -> disable
#pragma config IESO = OFF         // Internal/External switchover -> disable
#pragma config CLKOUTEN = ON      // CLKOUT, clock out function on pin -> enable
#pragma config BOREN = OFF        // Brown-out reset -> enable
#pragma config CPD = OFF          // Data memory code protection -> disabled
#pragma config CP = OFF           // Flash program memory code protection -> disabled
#pragma config MCLRE = ON         // MCLR, master clear function on pin -> enable
#pragma config PWRTE = OFF        // Power-up timer -> disabled
#pragma config WDTE = OFF         // Watchdog timer -> disabled
#pragma config FOSC = HS          // Oscillator selection -> HS, High-speed crystal/resonator connected between OSC1 and OSC2 pins

/* Register CONFIG2 */
#pragma config LVP = ON           // Low-voltage programming -> enabled
#pragma config DEBUG = OFF        // In-circuit debugger mode on pin ICSPCLK and ICSPDAT -> disabled
#pragma config BORV = LO          // Brown-out reset voltage selection -> Low trip point selected
#pragma config STVREN = ON        // Stack overflow reset -> enable
#pragma config PLLEN = ON         // PLL 4x -> enable
#pragma config VCAPEN = OFF       // Voltage regulator capacitor function on pin RA6 -> disabled
#pragma config WRT = OFF          // Flash memory self-write protection -> off


#include "program.h"


void main(void) {
    programInitialize();
    
    while(1) {
        programLoop();
    }
}
