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
<br/>

* Initialize ADC module for 12bits data result.

  ```
      void var_Initialize(void);
  ```
  
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
      ADCON2bits.TRIGSEL = 0; // Disable auto-conversion trigger source
  }
  ```
<br/>

## Read Digital Value of Analog
* Set ADC positive and negative differential input.
* Turn on ADC module and wait for acquisition time.
  - The acquisition time for Schematic 5.1 is $4.88\mu s$ where $R_{S}$ is $10.1k\Omega$.
    >$T_{C} = 1.63\mu s$<br/>
    >$T_{ACQ} = 2\mu s + 1.63\mu s + 1.25\mu s$<br/>
* Start conversion and wait for it to complete.
* Read ADC result or create a function to return 16bits data type and return the result.
* Shift and combine both ADC results data bits high, ADRESH and low, ADRESL to arrange it into 16bits data form.

```
    uint16_t var_Read(void);
```

```
uint16_t var_Read(void) {
    ADCON0bits.CHS = 0;     // Set ADC positive differential input to channel 0
    ADCON2bits.CHSN = 15;   // Set ADC negative differential input to ADNREF
    
    ADCON0bits.ADON = 1;    // Turn on ADC module
    
    delay_x1o5us(4);        // Wait acquisition time - Page 152 and 153
    
    ADCON0bits.GO = 1;      // Start conversion
    while(ADCON0bits.GO);   // Wait for ADC conversion to complete
    
    // Return ADC result
    return (uint16_t)(ADRESH<<4) | (ADRESH>>4);
}
```
<br/>

## Example Program
```
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
```
<br/>
