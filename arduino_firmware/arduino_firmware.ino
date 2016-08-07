
#include <stdio.h>
#include <Stepper.h>
#include <string.h>

const int stepsPerRevolutionBase = 700;
const int stepsPerRevolutionLaser = 700;


// initialize the stepper library on pins 8 through 11:
Stepper myStepperBase(stepsPerRevolutionBase, 2, 3, 4, 5);
Stepper myStepperLaser(stepsPerRevolutionLaser, 6, 7, 8, 9);

int motorSpeedBase = 50,
    motorSpeedLaser = 50,
    counter = 250;
char coords [2];

int currentBaseSteps = 0;
int currentLaserSteps = 0;

void fireLaser();
void moveLaser(bool, bool);
void resetPosition();

void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(10, OUTPUT);
  digitalWrite(12, LOW);
}

void loop() {
  if (Serial.available() > 0) {
    // read the incoming byte:
    coords = strtok(Serial.read(), ",");
  }
  Serial.println(counter);
  
  // set the motor speed:
  if (motorSpeedBase > 0) {
    myStepperBase.setSpeed(motorSpeedBase);
    // step 1/100 of a revolution:
    myStepperBase.step(stepsPerRevolutionBase / 100);
    currentBaseSteps += (stepsPerRevolutionBase / 100);
  }
  
  // set the motor speed:
  if (motorSpeedLaser > 0) {
    myStepperLaser.setSpeed(motorSpeedLaser);
    // step 1/100 of a revolution:
    myStepperLaser.step(stepsPerRevolutionLaser / 100);
    currentLaserSteps += (stepsPerRevolutionLaser / 100);
  }

  counter--;
        
  if (!counter){
    fireLaser();
    counter = 250;
  }
}

void resetPosition () {
  myStepperBase.step(-1 * currentBaseSteps);
  myStepperLaser.step(-1 * currentLaserSteps);

  currentBaseSteps = 0;
  currentLaserSteps = 0;
  motorSpeedBase = 0;
  motorSpeedLaser = 0;
}

void fireLaser () {
  digitalWrite(13, HIGH);
  digitalWrite(10, HIGH);
  delay(1000);
  digitalWrite(13, LOW);
  digitalWrite(10, LOW);

  resetPosition ();
}

void moveLaser (bool baseReverseDirection, bool laserReverseDirection) {
  
}

