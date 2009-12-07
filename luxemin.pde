// Copyright(c) 2009 Riga Mickael - see MIT_LICENCE for more details

/*

Pretty simple example.
It's like a theremin but works with light (thus the name i gave it).

Wiring is just a twitter on digital PWM pin 3 and a light sensor (with resistor bridge obviously) on digital IN 5
 
*/

int speaker = 3;
int luxemin = 5;

void setup() {
  pinMode(speaker, OUTPUT);
}

void loop() {
     int tone = map(analogRead(luxemin), 0, 1023, 1000, 3500);
     digitalWrite(speaker, HIGH);
     delayMicroseconds(tone);
     digitalWrite(speaker, LOW);
     delayMicroseconds(tone);
}
