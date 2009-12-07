int speaker = 3;
int keys[] = { 3830, 3400, 3038, 2864, 2550, 2272, 2028, 1912 }; // Do Re Mi Fa Sol La Si

void setup() {
  pinMode(speaker, OUTPUT);
  for (int i = 4; i < 9; i++) {
    pinMode(i, INPUT);
  }
}

void loop() {
  for (int i = 4; i < 9; i++) {
    if (digitalRead(i) == HIGH) {
      digitalWrite(speaker, HIGH);
      delayMicroseconds(keys[i-4]);
      digitalWrite(speaker, LOW);
      delayMicroseconds(keys[i-4]);
    }
  }  
}
