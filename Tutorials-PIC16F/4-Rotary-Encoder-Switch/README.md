# Rotary Encoder Switch
![RES-1](https://github.com/user-attachments/assets/ae58243e-5199-4a48-b2e9-a9a76bc397ba)
![RES-2](https://github.com/user-attachments/assets/a1f6082f-09ba-4ee3-b585-bb08a92fb0f4)
<br/>
This rotary encoder has two clock outputs A and B, equiped with a pressable knob switch. Both clock outputs can be used to determine the rotation direction. 
Refer to rotary encoder switch [datasheet](https://docs.rs-online.com/6487/0900766b813ecfbe.pdf).
<br/>

<br/>

Schematic 4.1
<br/>
<br/>
Schematic 4.1 shows the circuitory of rotary encoder switch which are the same as [push button circuit](https://github.com/i9Workshop/Tutorials-Microchip-XC8/tree/main/Tutorials-PIC16F/3-Push-Button) in Schematic 3.1.<br/>
The value for debounce capacitor is suggested in datasheet page 2.
<br/>

<br/>

## Define and Initialize Peripheral
```

```
<br/>

## Read Encoder Switch and Clock Pulse
* Method to read the switch is the same as push button.
  ```
  
  ```
<br/>

* Use bitwise operand left shift, '<<' or right shift, '>>' to read the clock pulse thus determine the rotation direction.
  ```
  
  ```
<br/>

## Example Program
```

```
<br/>
