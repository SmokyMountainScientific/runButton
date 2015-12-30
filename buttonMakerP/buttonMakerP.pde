//buttonMaker sketch
// creates png files for run and stop buttons
// each button requires three png files;
//   each button has a resting, mouseover and active state
//   note to change bckgnd value to match GUI background color

String[] name = {
  "data/runButtonA.png", "data/stopButtonA.png", 
  "data/runButtonB.png", "data/stopButtonB.png", 
  "data/runButtonC.png", "data/stopButtonC.png"
};  
//file names for graphics
int[] buttonColor = {
  #CE9B0C, #CE9B0C, #0F7095, #FC1703
}; 

int bckgnd = #114F5F; // background color

int size = 30;  // button size
int dia1;    // diam of outer circle
int dia2;    // diam of inner circle
int disp;    // distance triangle from edge?
int disp2;
float f1 = 0.3;    // used in triangle
float f2 = 0.4;    // used in stop signal
void setup() {
  //  PFont font1 = createFont("BaskOldFace-48", 18);
  size(size, size);
  background(bckgnd);
  dia1= int(size*0.8);
  dia2 = int(size*0.6);
  disp = int(f1*size);
  disp2 = int(f2*size);
  //  logo = loadImage("gearlogo.png");
  ellipseMode(CENTER);
  for (int j=0; j<3; j++) {
    for (int k = 0; k<2; k++) {
      fill(buttonColor[0]); // outer circle
      stroke(0);
      ellipse(size/2, size/2, dia1, dia1);
      noStroke();           // inner circle
      fill(buttonColor[j+1]);
      ellipse(size/2, size/2, dia2, dia2);
      stroke(0);
      fill(0);
      if (k == 0) {   // run button
        triangle(disp, disp, size-disp, size/2, disp, size-disp);
      } else {            // stop button
        strokeWeight(5);
        line(disp2, disp2, disp2, size-disp2);
        line(size-disp2, disp2, size-disp2, size-disp2);
        strokeWeight(0);
      }
      save(name[2*j+k]);
    }
  }
}
void draw() {
}

