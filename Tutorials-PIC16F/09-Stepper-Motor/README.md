# Bipolar Stepper Motor

![Stepper-Motor-EM257](https://github.com/user-attachments/assets/9e7d37e2-90f5-4b76-ab52-3e1ae5d8dac5)
<br/>

Bipolar stepper motor is a bruhless motor which has a stator drived by two set of coils. Hence, a driver which can control two DC motor is needed to drive both coils. Refer to motor and driver specification for voltage and current rating.
<br/>

<br/>

![Diagram Stepper Motor](https://github.com/user-attachments/assets/d8f28c1d-f577-48aa-8398-9e57d2670817)
<br/>
Diagram 9.1

Diagram 9.1 on the right is a simplified model of stepper motor using a single magnet pole as rotor for a $90^\circ$ full step rotation. 
The actual stepper motor has many magnet pole on the rotor and multiple coil to make a very small step. The typical wires arrangment respective to the coil windings is in Diagram 9.1 on the left.
<br/>

Rotation of stepper motor needs sequencial coil activation to move the rotor. There can be three mode of steps which are.
* Full step - Activation of one coil at one time.
  >$A \rightarrow B \rightarrow \overline{A} \rightarrow \overline{B}$
* Half step - Activation of both coil at one time to position the rotor pole in between two coils.
  >$A \rightarrow AB \rightarrow B \rightarrow \overline{A}B \rightarrow \overline{A} \rightarrow \overline{A}\overline{B} \rightarrow \overline{B} \rightarrow A\overline{B}$
* Micro step - Activation of coils required sophisticated driver to control current flow in the coil to achieved minute position of the rotor by using the same method of half step sequences.
<br/>

<br/>

![Circuit-Stepper-Motor](https://github.com/user-attachments/assets/b1e354c7-303e-452e-b174-a78e3b33f7dc)
<br/>
Schematic 9.2

Schematic 9.2 shows a circuit of dual motor driver to drive bipolar stepper motor. $In_{1}$ and $In_{2}$ will control $M_{1}$ output while $In_{3}$ and $In_{4}$ will control $M_{2}$ output.
<br/>

<br/>

## Define and Initialize Peripheral

<br/>

## Example Program

<br/>

## MPLabX Code

* link
<br/>

<br/>
