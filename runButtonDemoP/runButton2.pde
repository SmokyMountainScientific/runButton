void showRunButton(){
  if(mouseX >40 && mouseX < 70 && mouseY > 50 && mouseY <80){
    if(runState==false){
      if(locked){
      theImage = runImage3;
    } else{
      theImage = runImage2;
  }
  }
  else{        // runState is true
      if (locked ){
  theImage = stopImage3;
  } else{
theImage = stopImage2;
  }
  }
  }// end of mouse position
  else{
  if (runState==false){
    theImage = runImage1;
  }
  else{
    theImage = stopImage1;
  }
}
}
void mousePressed(){
    if(mouseX >40 && mouseX < 70 && mouseY > 50 && mouseY <80){
    locked = true;
    theImage = runImage3;
    showRunButton();
//    runState =!runState;

  }
  else{
  theImage = runImage1;
  }
    }
    void mouseReleased(){
      locked = false;
      runState=!runState;
      println("run state = "+runState);
      serialPort.write('&');
    }
