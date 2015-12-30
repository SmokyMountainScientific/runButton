void setupRun(){

  while (wait == true){
    if(Serial.available() > 0) {
      int starti = Serial.read();
      ////// start code ///////////
      if(starti == '*') {           // Gui transmits * looking for com port
        Serial.println('&');         // LaunchPad responds to Gui with &
        digitalWrite(RED_LED,HIGH);
        delay(500);
        digitalWrite(RED_LED,LOW);
   //     wait = false;
      }   // end of if starti == * loop
      if (starti == '&'){
        wait = false;
        starti = 'a';
      }
    }
  }
}

