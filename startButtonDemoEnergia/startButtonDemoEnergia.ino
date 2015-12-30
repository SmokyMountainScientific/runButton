/*startButtonDemoEnergia sketch
*/
  boolean wait = true;
void setup()
{
  Serial.begin(9600); 
  pinMode (RED_LED,OUTPUT);
}

void loop()
{
  setupRun(); 
 digitalWrite(RED_LED,HIGH);
delay(300);
digitalWrite(RED_LED,LOW);
delay(300);
readStatus();
}

void readStatus(){
      if(Serial.available() > 0) {
      int starti = Serial.read();
      ////// start code ///////////
      if(starti == '&') {           // Gui transmits & to stop run
      wait = true;
    }
      }
}
  
