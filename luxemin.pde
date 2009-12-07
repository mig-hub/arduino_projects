int speaker = 3;
int luxemin = 5;
int pitch = 4;

void setup() {
  pinMode(speaker, OUTPUT);
  pinMode(pitch, INPUT);
}

void loop() {
     int tone = map(analogRead(luxemin), 0, 1023, 1000, 3500);
      digitalWrite(speaker, HIGH);
      delayMicroseconds(tone);
      digitalWrite(speaker, LOW);
      delayMicroseconds(tone);
}
