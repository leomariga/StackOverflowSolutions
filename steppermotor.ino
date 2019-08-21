void setup() {
  pinMode (13, OUTPUT); //STEP PIN
  pinMode (A5, INPUT); //POTPIN
  pinMode (12, OUTPUT); //DIRPIN
  digitalWrite (12, LOW); 
}

void loop() {
  int potValue =  analogRead (A5); // Read from potentiometer
  int delayValue= map(potValue, 0, 1023, 10,2000); // Map potentiometer value to a value from 300 to 4000

  digitalWrite (13, HIGH);
  delayMicroseconds(delayValue);
  digitalWrite (13, LOW);
  delayMicroseconds(delayValue);
}