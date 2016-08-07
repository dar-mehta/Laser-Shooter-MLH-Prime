
/*
 Stepper Motor Control - speed control

 This program drives a unipolar or bipolar stepper motor.
 The motor is attached to digital pins 8 - 11 of the Arduino.
 A potentiometer is connected to analog input 0.

 The motor will rotate in a clockwise direction. The higher the potentiometer value,
 the faster the motor speed. Because setSpeed() sets the delay between steps,
 you may notice the motor is less responsive to changes in the sensor value at
 low speeds.

 Created 30 Nov. 2009
 Modified 28 Oct 2010
 by Tom Igoe

 */

#include <Stepper.h>

const int stepsPerRevolutionBase = 700;  // change this to fit the number of steps per revolution
// for your motor
const int stepsPerRevolutionLaser = 700;  // change this to fit the number of steps per revolution
// for your motor


// initialize the stepper library on pins 8 through 11:
Stepper myStepperBase(stepsPerRevolutionBase, 2, 3, 4, 5);
Stepper myStepperLaser(stepsPerRevolutionLaser, 6, 7, 8, 9);

int motorSpeedBase = 50,
    motorSpeedLaser = 50,
    counter = 250;

void setup() {
  // nothing to do inside the setup
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(10, OUTPUT);
  digitalWrite(12, LOW);

  //set up motor speed
  myStepperBase.setSpeed(motorSpeedBase);
  myStepperLaser.setSpeed(motorSpeedLaser);
}

void fireLaser () {
  digitalWrite(13, HIGH);
  digitalWrite(10, HIGH);
  delay(1000);
  digitalWrite(13, LOW);
  digitalWrite(10, LOW);
}

void moveLaser (baseReverseDirection, laserReverseDirection) {
  
}

void loop() {
  // set the motor speed:
  if (motorSpeedBase > 0) {
    // step 1/100 of a revolution:
    myStepperBase.step(stepsPerRevolutionBase / 100);
  }
  
  // set the motor speed:
  if (motorSpeedLaser > 0) {
    // step 1/100 of a revolution:
    myStepperLaser.step(stepsPerRevolutionLaser / 100);
  }

  counter--;
      
  if (!counter){
    fireLaser();
    counter = 250;
  }
}


