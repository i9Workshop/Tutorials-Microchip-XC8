# Analog Read - Variable Resistor
<br/>

![Schematic-Variable-Resistor](https://github.com/user-attachments/assets/1fbe958a-2142-44cf-9e96-90b4416a04c4)
<br/>
Schematic 5.1
<br/>

Schematic 5.1 shows the circuitory to read voltage across variable resistor R15. Voltage across R15 will be varies betweeen $V_{CC}$, 5V and 0V. <br/>
R14 acts as current limiter to pin RA0 thus the voltage will be varies between 5V - $(R14 \times{} I_{R14})$ and 0V. Any small error will be corrected in code to achieve desired accuracy. 
C12 is used to debounce mechanical noise.
<br/>

<br/>

## Initialize Peripheral
* Set pin direction to output at register TRISA - Page 114
* Set pin for digital I/O purpose at register ANSELA - Page 115

  ```
      TRISAbits.TRISA0 = 1;
      ANSELAbits.ANSA0 = 1;
  ```

* Initialize ADC module
  ```
  void var_Initialize(void) {
      // Datasheet page 147
      ADCON0bits.ADON = 0;    // Turn off ADC module
      ADCON0bits.ADRMD = 0;   // Set ADC data format for a 12bits result
      
      // Datasheet page 148
      ADCON1bits.ADFM = 0;    // Set ADC result to use sign-magnitude format
      ADCON1bits.ADCS = 0;    // Set ADC peripheral clock to FOSC/2
      ADCON1bits.ADPREF = 0;  // Set ADC positive voltage reference to MCU's VDD
      ADCON1bits.ADNREF = 0;  // Set ADC negative voltage reference to MCU's VSS
      
      // Datasheet page 149
      ADCON2bits.TRIGSEL = 0;
  }
  ```
<br/>

## Read Digital Value of Analog
<br/>

## Example Program
<br/>
