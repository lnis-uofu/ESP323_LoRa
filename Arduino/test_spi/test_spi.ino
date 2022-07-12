#include<SPI.h>

volatile boolean received;
volatile byte receivedData;

ISR (SPI_STC_vect)        //Inerrrput routine function 
{
  //receivedData = SPDR;   // Get the received data from SPDR register
  //received = true;       // Sets received as True 
  Serial.println(SPDR);
}

void setup()
{
  Serial.begin(115200);

  pinMode(MISO,OUTPUT);   //Sets MISO as OUTPUT
  SPCR |= _BV(SPE);       //Turn on SPI in Slave Mode
  //received = false;
  SPI.attachInterrupt();  //Activate SPI Interuupt 
  
}


void loop()
{ 
  delay(100);
  
}
