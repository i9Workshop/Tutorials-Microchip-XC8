# Tutorial for PIC16F1783

Refer to Microchip product [datasheet](https://www.microchip.com/en-us/product/pic16f1783) of PIC16F(L)1782/3 
and mid-range MCU [instruction set](https://developerhelp.microchip.com/xwiki/bin/view/products/mcu-mpu/8bit-pic/enhanced-family/mrinst/#).<br/>
<br/>

<br/>

## 1.  Device and Clock Configuration

![Schematic-Crystal-Oscillator](https://github.com/user-attachments/assets/ab182c40-9e38-42b5-b5cf-1f6537c42b45)
<br/>
Schematic 0.1
<br/>

* Hardware selection for desired 32MHz system clock frequency.
    - Crystal oscillator, OSC1 : 8MHz
<br/>

* Value for C1 and C2 are refered to documentation of [PIC16F877A](https://www.microchip.com/en-us/product/pic16f877a) titled "Oscillator - PICmicro Mid-Range MCU Family" in page 4.<br/>
In the documentation refer to page 7, Table 2-4: Typical Capacitor Selection for Crystal Oscillator.
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

<br/>

## 2.  Master Reset Circuit

![Schematic-Reset-Button](https://github.com/user-attachments/assets/3d5830bf-1a6e-449f-af5e-13e1481c1841)
<br/>
Schematic 0.2
<br/>

Deciding value for resistor R1 is depending on voltage at pin $\overline{MClr}$, $V_{MClr}$ which is voltage drop accross R1 and current accross R1, $I_{R1}$. Refer to datasheet page 364.
* $I_{R1}$ will be MCU weak pull-up current, $I_{PUR}$ therefor
  >$I_{R1} = I_{PUR} = 140\mu A$
* Minimum $V_{MClr}$ will be input high voltage, $V_{IH}$ which is<br/>
  >$V_{MClr} = 0.8 \times{} V_{cc} =  0.8 \times{} 5V = 4V$
* Value for R1 is
  >$R1 = \frac{V_{CC} - V_{MClr}}{I_{R1}} = \frac{5V - 4V}{140\mu A} = 7.1k\Omega$
* If R1 is more than $7.1k\Omega$, make sure $V_{MClr}$ does not fall below 4V.
* If R1 is less than $7.1k\Omega$, make sure pull down current accross it when button is pressed not high to cause interruption of MCU required current operation.
<br/>

<br/>

## 3.  Create Delay Functions

* This function will be used in many applications for this tutorial.
<br/>

* Use NOP( ) instruction in for loop instruction for predictable desired delay duration.
    - 1 instruction cycle use 4 clock cycle.
    - Instruction cycle values are calculated from acquired [data](https://github.com/i9Workshop/Tutorials-Microchip-XC8/blob/main/Tutorials-PIC16F/for_loop_instruction_cycle_data.txt) using software in MPLABX.
      
    - NOP( ) use 1 instruction cycle thus 4 clock cycle is used therefor
      >$\frac{1}{32Mhz} \times{} 4 = 0.125\mu s$
      
    - A loop by using 8bits variable in for loop use about 44 clock cycle which is
      >$\frac{1}{32Mhz} \times{} 44 = 1.375\mu s$
      
    - A loop by using 16bits variable in for loop use about 56 clock cycle which is
      >$\frac{1}{32Mhz} \times{} 56 = 1.75\mu s$
      
    - A loop by using 32bits variable in for loop use about 104 clock cycle which is
      >$\frac{1}{32Mhz} \times{} 104 = 3.25\mu s$
<br/>

```
    void delay_x1o5us(uint8_t delay);
    void delay_x24o25us(uint16_t delay);
    void delay_ms(uint32_t delay);
```

```
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
```
<br/>

<br/>

## 4.  Wait for PSU Power Up and Device Start Up in Code

* Power supply unit timing to power up is depended on the circuit specification.

* Refer to MCU datasheet for device start up timing, $T_{DSU}$.
  - Total device start up timing is acquired from Figure 5-3: Reset Start-Up Sequence in page 49 which is from oscillator start-up timer timing, $T_{OST}$ as refered to Table 30-10 in page 374.
    
    >$T_{DSU} = T_{OST} = 1024Cycle_{Instruction} = 1024 \times{} \frac{1}{32Mhz} \times{} 4 = 128\mu s$
    <br/>
  
  ```
  void main(void) {
      delay_ms(100); // Wait for PSU power up
      delay_x1o5us(86); // Wait for device to start up
      
      programInitialize(); // Initialize prorgram
      
      while(1) {
          programLoop(); // Main prorgram
      }
  }
  ```
<br/>

<br/>

## MPLabX Code

* https://github.com/i9Workshop/StarterBoardV1-PIC16F1783-ClockConfigAndLedBlink
<br/>

<br/>
