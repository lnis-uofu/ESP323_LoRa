void setup() {
  //pinMode(8, INPUT_PULLUP); // set push button pin as input
  pinMode(13, OUTPUT);      // set LED pin as output
  digitalWrite(13, LOW);    // switch off LED pin

  Serial.begin(115200);       // initialize UART with baud rate of 9600 bps
}

void loop() {
  if(Serial.available()) {
    char data = Serial.read();   // read one byte from serial buffer and save to data_rcvd
    //delay(10);
    //digitalWrite(13, HIGH);
    
    Serial.write(data);
    //digitalWrite(13,LOW);
    //delay(10);
    
    
  }
  delayMicroseconds(1);
}
