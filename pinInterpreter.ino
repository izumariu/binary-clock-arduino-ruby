#include<string.h>
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  while (!Serial);
  Serial.setTimeout(5);
  pinMode(42, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available()) {
    String serin = Serial.readString();
    int serint = serin.toInt();
   /* if (serint > 52) {
      //Serial.println(String(serint));
      Serial.println(serint);
     */ 
    if (serint == 99) {
      Serial.println("ALL OFF");
      for (int i = 2; i <= 70; i++) {
        analogWrite(i, 0);
      }
    }
  //}
  else {
    if (serint == 42) {
      analogWrite(42, 128);
      delay(1);
      analogWrite(42, 0);
    } else {
      analogWrite(serint, 128);
      }
    }
  }
}

