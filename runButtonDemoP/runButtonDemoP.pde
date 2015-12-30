/*  RunButtonDemo sketch
   incorporates com port search,
   uses button graphic files generated
   by buttonMaker sketch.  button graphic png files must be 
   in data folder inside runButtonDemo sketch folder*/

import controlP5.*;                   // needed for connect button
import processing.serial.*;
//PImage[] imgA = new PImage[3];
PImage runImage1, runImage2, runImage3; 
PImage stopImage1, stopImage2, stopImage3;
PImage theImage;
ControlP5 cp5Com; // run button is not a cp5 controller
boolean runState = false;
//boolean stoppit = false;
boolean locked = false;
int pressNo = 0;
Serial serialPort;
PFont font = createFont("arial", 20);
int bkgnd = #114F5F;
String comStatTxt; 
String[] comList ;               // Array for port names.
boolean Comselected = false;
String runText;
void setup() {
  size(300, 100);
  runImage1 = loadImage("runButtonA.png");
  runImage2 = loadImage("runButtonB.png");
  runImage3 = loadImage("runButtonC.png");
  stopImage1 = loadImage("stopButtonA.png");
  stopImage2 = loadImage("stopButtonB.png");
  stopImage3 = loadImage("stopButtonC.png");

  setupComButton();      // defined in Com_Port tab
  connect();           // defined in Com_Port tab
}             

void draw() {
  showRunButton();

  background(bkgnd);    
  stroke(255);
  textFont(font);
  text(comStatTxt, 65, 25);
  if (runState == true) {
    runText = "Stop";
  } else {
    runText = "Run";
  }
  image(theImage, 40, 50, 30, 30);
  text(runText, 80, 74);
}

