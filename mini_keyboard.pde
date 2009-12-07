// Copyright(c) 2009 Riga Mickael - see MIT_LICENCE for more details

/*

keys is an array with the period for notes (but devided by two in order to get the time-high)

___     ___     ___
   |   |   |   |   |        <---  Frenquency looks like that (HIGH, LOW, HIGH, LOW ...)
    ---     ---     --- 

The wiring is like that:

Twitter on pin 3 (a PWM pin)
7 buttons on digital pins from 4 to 10

The loop check if buttons are pressed and play the associated note.
Because the pins are from 4 to 10 and an array has indexes from 0 to the end, we only do the pin number minus 4 in order to get the corresponding array's item.
      
*/

int speaker = 3;
int keys[] = { 1915, 1700, 1519, 1432, 1275, 1136, 1014, 956 }; // C, D, E, F, G, A, B

void setup() {
  pinMode(speaker, OUTPUT);
  for (int i = 4; i < 11; i++) {
    pinMode(i, INPUT);
  }
}

void loop() {
  for (int i = 4; i < 11; i++) {
    if (digitalRead(i) == HIGH) {
      digitalWrite(speaker, HIGH);
      delayMicroseconds(keys[i-4]);
      digitalWrite(speaker, LOW);
      delayMicroseconds(keys[i-4]);
    }
  }  
}
