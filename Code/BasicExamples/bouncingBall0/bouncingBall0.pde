/*
*    Doug Brantner
*    Bouncing Ball Example
*    Processing 3/Java
*    9/12/18
*/  

// Global Variables

// User-Editable Globals
int diameter = 25;       // diameter of ball
int vx = 1;              // velocity in x direction
int vy = 1;              // velocity in y direction
int vs = 1;              // speed multiplier

//  Other Globals
int bx0, bx1, by0, by1;  // screen boundaries  
int px, py;              // ball position x,y


// Setup method runs once at beginning  
void setup() {
  size(640, 320); // set window size
  
  px = width / 2;  // start ball in center of screen
  py = height / 2;
  
  bx1 = width - diameter/2;  // set boundaries
  by1 = height - diameter/2;
  bx0 = by0 = diameter/2;
  
  vx *= vs;  // apply speed multiplier
  vy *= vs;
  
  background(255);  // set background to white
  
  println("Ready.");
}

// Draw method repeats continuously in an infinite loop
void draw() {  
  background(255);  // clear screen
  
  ellipse(px, py, diameter, diameter);  // draw ball

  update_position();
  check_bounds();
}


// Supporting Methods are called as necessary
void update_position() {
  px += vx;  // same as px = px + vx
  py += vy;
}

void check_bounds() {
  // check if ball hits any wall
  // then flip x/y direction if necessary
  
  if (px <= bx0 || px >= bx1) { // check left/right walls
    vx *= -1;
  }
  
  if (py <= by0 || py >= by1) { // check top/bottom walls
    vy *= -1;
  }
}
