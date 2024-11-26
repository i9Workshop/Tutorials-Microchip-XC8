# Tutorial for PIC18F25K42

Refer to Microchip product [datasheet](https://www.microchip.com/en-us/product/pic18f25k42) of PIC18(L)F24/25K42 
and mid-range MCU [instruction set](https://developerhelp.microchip.com/xwiki/bin/view/products/mcu-mpu/8bit-pic/enhanced-family/mrinst/#).<br/>
<br/>

<br/>

## 1.  Device and Clock Configuration

![Schematic-Crystal-Oscillator](https://github.com/user-attachments/assets/ab182c40-9e38-42b5-b5cf-1f6537c42b45)
<br/>
Schematic 0.1
<br/>

* Hardware selection for desired 64MHz system clock frequency.
    - Crystal oscillator, OSC1 : 16MHz
<br/>

* Value for C1 and C2 are refered to documentation of [PIC16F877A](https://www.microchip.com/en-us/product/pic16f877a) titled "Oscillator - PICmicro Mid-Range MCU Family" in page 4.<br/>
In the documentation refer to page 7, Table 2-4: Typical Capacitor Selection for Crystal Oscillator.
<br/>

* Set PIC configuration.
  - FOSC use high-speed oscillator, HS.
  - PLLEN use PLL x4.
  - PWRTS use 64ms.
  - Refer datasheet to configure register.
    - CONFIG1 - Page 40
    - CONFIG1 - Page 42
<br/>

```
// CONFIG1L
#pragma config FEXTOSC = HS         // Oscillator selection -> HS, High-speed crystal/resonator above 8MHz connected between OSC1 and OSC2 pins
#pragma config RSTOSC = EXTOSC_4PLL // Reset oscillator selection -> EXTOSC with 4x PLL

// CONFIG1H
#pragma config CLKOUTEN = ON        // CLKOUT, clock out function on pin -> enable
#pragma config PR1WAY = OFF         // PRLOCKED one-way -> PRLOCK can be set and cleared repeatedly
#pragma config CSWEN = OFF          // Internal/External switchover -> disable, the NOSC and NDIV bits cannot be changed by user software
#pragma config FCMEN = OFF          // Fail-safe clock monitor -> disable

// CONFIG2L
#pragma config MCLRE = EXTMCLR      // MCLR, master clear function on pin -> enable
#pragma config PWRTS = PWRT_64      // Power-up timer -> enable, timer = 64ms
#pragma config MVECEN = ON          // Multi-vector -> enabled, vector table used for interrupts
#pragma config IVT1WAY = OFF        // IVTLOCK one-way -> IVTLOCK can be cleared and set repeatedly
#pragma config LPBOREN = OFF        // Low power BOR -> disable
#pragma config BOREN = ON           // Brown-out reset -> enable

// CONFIG2H
#pragma config BORV = VBOR_2P45     // Brown-out reset voltage -> VBOR = 2.45V
#pragma config ZCD = OFF            // ZCD module -> disabled
#pragma config PPS1WAY = OFF        // PPSLOCK one-way -> PPSLOCK can be set and cleared repeatedly, subject to the unlock sequence
#pragma config STVREN = ON          // Stack full/underflow reset -> enable
#pragma config DEBUG = OFF          // Background debugger -> disabled
#pragma config XINST = OFF          // Extended instruction set and indexed addressing mode -> disabled

// CONFIG3L
#pragma config WDTE = OFF           // Watchdog timer -> disabled
#pragma config WDTCPS = WDTCPS_31   // WDT period selection bits -> Divider ratio 1:65536, software control of WDTPS

// CONFIG3H
#pragma config WDTCWS = WDTCWS_7    // WDT window select bits -> window always open 100%, software control keyed access not required
#pragma config WDTCCS = SC          // WDT input clock selector -> software sontrol
```
<br/>

<br/>

## 2.  Master Reset Circuit

![Schematic-Reset-Button](https://github.com/user-attachments/assets/3d5830bf-1a6e-449f-af5e-13e1481c1841)
<br/>
Schematic 0.2
<br/>

Refer to datasheet page 15, value for R1 is $10k\Omega$ and R2 is $100\Omega$.
<br/>

<br/>

## 3.  Create Delay Functions

* This function will be used in many applications for this tutorial.
<br/>

* Use NOP( ) instruction in for loop instruction for predictable desired delay duration.
    - 1 instruction cycle use 4 clock cycle.
    - Instruction cycle values are calculated from acquired [data](https://github.com/i9Workshop/Tutorials-Microchip-XC8/blob/main/Tutorials-PIC16F/for_loop_instruction_cycle_data.txt) using software in MPLABX.
      
    - NOP( ) use 1 instruction cycle thus 4 clock cycle is used therefor
      >$\frac{1}{64Mhz} \times{} 4 = 62.5ns$
      
    - A loop by using 8bits variable in for loop use about 44 clock cycle which is
      >$\frac{1}{64Mhz} \times{} 44 = 687.5ns$
      
    - A loop by using 16bits variable in for loop use about 56 clock cycle which is
      >$\frac{1}{64Mhz} \times{} 56 = 875ns$
      
    - A loop by using 32bits variable in for loop use about 104 clock cycle which is
      >$\frac{1}{64Mhz} \times{} 104 = 1.625\mu s$
<br/>

```
    void delay_x750ns(uint8_t delay);
    void delay_x21o125us(uint16_t delay);
    void delay_ms(uint32_t delay);
```

```
// Delay x750ns
void delay_x750ns(uint8_t delay) {
    for(uint8_t i=0; i<delay; i++) NOP();
}

// Delay x21.125us
void delay_x21o125us(uint16_t delay) {
    for(uint16_t i=0; i<delay; i++) delay_x750ns(27);
}

// Delay x1ms
void delay_ms(uint32_t delay) {
    for(uint32_t i=0; i<delay; i++) delay_x21o125us(47);
}
```
<br/>

<br/>

## 4.  Wait for PSU Power Up and Device Start Up in Code

* PWRTS is enabled thus cpu will start after 64ms.

* Adiitional power supply unit timing to power up is depended on the circuit specification.

* Refer to MCU datasheet for device start up timing, $T_{DSU}$.
  - Total device start up timing is acquired from Figure 5-3: Reset Start-Up Sequence in page 92 which is from oscillator start-up timer timing, $T_{Osc}$ as refered to Table 46-11 in page 755.
    
    >$T_{DSU} = T_{Osc} = 1024Cycle_{Osc} = 1024 \times{} \frac{1}{64Mhz} = 16\mu s$
    <br/>
  
  ```
  void main(void) {
      delay_ms(10);     // Additional PSU power up timing after 64ms MCU power up timer, PWRTS
      delay_x750ns(22); // Oscillator start up timing and I/O high impedance from reset
                        // Tosc = 16us
      
      programInitialize(); // Initialize prorgram
      
      while(1) {
          programLoop(); // Main prorgram
      }
  }
  ```
<br/>

## MPLabX Code

* https://github.com/i9Workshop/StarterBoardV1-PIC18F25K42-ClockConfigAndLedAndPushButton
<br/>

<br/>
