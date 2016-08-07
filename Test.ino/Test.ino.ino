//char buffer[256];
//void setup()
//{
//    Serial.begin(9600);  // opens serial port, sets data rate to 9600 bps
//    // set up the LCD's number of columns and rows:
//    pinMode(13, OUTPUT);
//}
//void loop()
//{
//  // send data only when you receive data:
//  if (Serial.available() > 0)
//  {
//    digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
//  }
//}
#include <stdio.h>
#include <string.h>
char* strng;   // for incoming serial data
void setup()
{
        Serial.begin(9600);     // opens serial port, sets data rate to 9600 bps
}
void loop()
{
        // send data only when you receive data:
        if (Serial.available() > 0)
        {
                // read the incoming byte:
                strng = strtok((char*)Serial.read(), ",");
                // say what you got:
                digitalWrite(13, HIGH);
                Serial.print("I received: ");
                Serial.println(*strng, DEC);
                Serial.println(*strng);
        }
}
