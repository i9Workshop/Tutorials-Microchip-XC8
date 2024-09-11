# Tutorial for PIC16F1783

Refer to Microchip product [datasheet](https://www.microchip.com/en-us/product/pic16f1783) of PIC16F(L)1782/3 
and mid-range mcu [instruction set](https://developerhelp.microchip.com/xwiki/bin/view/products/mcu-mpu/8bit-pic/enhanced-family/mrinst/#).<br/>
<br/>

## 1.  Device and Clock Configuration

* Hardware selection for desired 32MHz system clock frequency.
    - Crystal oscillator : 8MHz
<br/>

* Set PIC configuration.
  - FOSC use high-speed oscillator, HS.
  - PLLEN use PLL x4.
  - Refer datasheet to configure register.
    - CONFIG1 - Page 40
    - CONFIG1 - Page 42
<br/>

```
// Register CONFIG1
#pragma config FCMEN = OFF        // Fail-safe clock monitor -> disable
#pragma config IESO = OFF         // Internal/External switchover -> disable
#pragma config CLKOUTEN = ON      // CLKOUT, clock out function on pin -> enable
#pragma config BOREN = OFF        // Brown-out reset -> enable
#pragma config CPD = OFF          // Data memory code protection -> disabled
#pragma config CP = OFF           // Flash program memory code protection -> disabled
#pragma config MCLRE = ON         // MCLR, master clear function on pin -> enable
#pragma config PWRTE = OFF        // Power-up timer -> disabled
#pragma config WDTE = OFF         // Watchdog timer -> disabled
#pragma config FOSC = HS          // Oscillator selection -> HS, High-speed crystal oscillator connected between OSC1 and OSC2 pins

// Register CONFIG2
#pragma config LVP = ON           // Low-voltage programming -> enabled
#pragma config DEBUG = OFF        // In-circuit debugger mode on pin ICSPCLK and ICSPDAT -> disabled
#pragma config BORV = LO          // Brown-out reset voltage selection -> Low trip point selected
#pragma config STVREN = ON        // Stack overflow reset -> enable
#pragma config PLLEN = ON         // PLL 4x -> enable
#pragma config VCAPEN = OFF       // Voltage regulator capacitor function on pin RA6 -> disabled
#pragma config WRT = OFF          // Flash memory self-write protection -> off
```
<br/>

## 2.  Create Delay Function

* This function will be used in many applications for this tutorial.
<br/>

* Use NOP( ) instruction in for loop instruction for predictable desired delay duration.
    - 1 instruction cycle use 4 clock cycle;
      
    - NOP( ) use 1 instruction cycle thus 4 clock cycle is used therefor
      >1/32Mhz x 4 = 0.125us.
      
    - A loop by using 8bits variable in for loop use about 44 clock cycle which is
      >1/32Mhz x 44 = 1.375us.
      
    - A loop by using 16bits variable in for loop use about 56 clock cycle which is
      >1/32Mhz x 56 = 1.75us.
      
    - A loop by using 32bits variable in for loop use about 104 clock cycle which is
      >1/32Mhz x 104 = 3.25us.
<br/>

```
void delay_x1p5us(uint8_t delay);
void delay_x24p25us(uint16_t delay);
void delay_ms(uint32_t delay);
```

```
// Delay x1.5us
void delay_x1p5us(uint8_t delay) {
    for(uint8_t i=0; i<delay; i++) NOP();
}

// Delay x24.25us
void delay_x24p25us(uint16_t delay) {
    for(uint16_t i=0; i<delay; i++) delay_x1p5us(15);
}

// Delay x1ms
void delay_ms(uint32_t delay) {
    for(uint32_t i=0; i<delay; i++) delay_x24p25us(41);
}
```
<br/>

<br/>
