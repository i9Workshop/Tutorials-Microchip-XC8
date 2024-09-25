# Bipolar Stepper Motor

![Stepper-Motor-EM257](https://github.com/user-attachments/assets/9e7d37e2-90f5-4b76-ab52-3e1ae5d8dac5)
<br/>

Bipolar stepper motor is a bruhless motor which has a stator drived by two set of coils. Hence, a driver which can control two DC motor is needed to drive both coils. Refer to motor and driver specification for voltage and current rating.
<br/>

<br/>

![Diagram-Stepper-Motor-2](https://github.com/user-attachments/assets/94a916c2-7e2c-4d01-be13-d6acf3dd0a63)
<br/>
Diagram 9.1

Diagram 9.1 on the right is a simplified model of stepper motor using a single magnet pole as rotor for a $90^\circ$ full step rotation. 
The actual stepper motor has many magnet pole on the rotor and multiple coil to make a very small step. The typical wires arrangment respective to the coil windings is in Diagram 9.1 on the left.
<br/>

Rotation of stepper motor needs squencial coil activation to move the rotor. There can be three mode of steps which are.
* Full step - Activation of one coil at one time.
  >$A \rightarrow B \rightarrow \overline{A} \rightarrow \overline{B}$
* Half step - Activation of both coil at one time to position the rotor pole in between coil.
  >$$
* Micro step - Activation of coils required sophisticated driver to control current flow in the coil to achieved minute position of the rotor by using half step sequence.
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
