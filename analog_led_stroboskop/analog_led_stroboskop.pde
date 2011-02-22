/*

LED "Stroboskop"-Blitzer regeln über Potentiometer

Am besten mit einer superhellen LED. ;-)
 
*/

int ledPin = 6;    // LED angeschlossen an Pin 9
int potiPin = 0;   // Poti angeschlossen an Pin Analog 0

// setup() wird einmalig ausgeführt.
void setup()  { 
  // Festlegen, daß der LED-Pin ein Ausgang ist:
  pinMode(ledPin, OUTPUT);
} 

// loop() läuft danach endlos, solange wie Strom da ist.
void loop()  { 
  // Den Wert vom Potentiometer lesen
  int analogIn = analogRead(potiPin);
  
  // LED einschalten
  digitalWrite(ledPin, HIGH);

  // Ganz kurz (eine tausendstel Sekunde) warten
  delay(1);
  
  // LED ausschalten
  digitalWrite(ledPin, LOW);
  
  // So lange warten, wie von Analog gelesen
  delay(analogIn);
  
}


