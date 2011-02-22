/*

LED Helligkeit steuern über Potentiometer
 
*/

int ledPin = 6;    // LED angeschlossen an Pin 9 (PWM-Analogausgang)
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
  
  // Poti kann Werte liefern von 0-1023 aber 
  // analog ausgeben können wir nur 0-255.
  // Also Wert durch 4 teilen.
  int analogOut = analogIn / 4;
  
  // LED auf den errechneten Wert einstellen
  analogWrite(ledPin, analogOut);
}


