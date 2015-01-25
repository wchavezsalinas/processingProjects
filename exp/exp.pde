float y = 5;
float x = 5;
float r = 255;
float g = 0;
float b = 0;
float rad = 0;
int buttonPressed = 0;
// The statements in the setup() function 
// run once when the program begins
void setup() {
  size(400, 400);  // size always goes first!
  if (frame != null) {
    frame.setResizable(true);
  }  // Size should be the first statement
  stroke(0);     // Set stroke color to white
    smooth();

  noLoop();
  background(255);   // Set the background to black

  //y = height * 0.5;
}

// The statements in draw() are run until the 
// program is stopped. Each statement is run in 
// sequence and after the last line is read, the first 
// line is run again.
void draw() { 
  translate(400,400); 
  rotate(radians(rad));
  rect(200,200,x,y);
  fill(r,g,b);
  
  y = y - 5; 
  if (y < 0) { 
    y = 100; 
  } 
  
  x = x + 5; 
  if (x > 100) { 
    x = 0; 
  } 
 
  rad = rad + 45;
  r = r - 2;
  g = g + 5;
  b = b - 1;
  if (r < 0) {
      r = 255;
  } if (g > 255) {
      g = 0;
  } if (b < 0) {
      b = 255;
  }
  if(rad > 320) {
    rad = 0;
  }
} 

void mousePressed() {
  if(buttonPressed ==0) {
    loop();
    buttonPressed = 1;
  } else if(buttonPressed == 1) {
    noLoop();
    buttonPressed = 0;
  }
  
}
