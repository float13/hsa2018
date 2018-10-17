/*
*    Doug Brantner
*    Bouncing Ball Example
*    Processing 3/Java
*    9/12/18
*
*    Version 00
*
*    Update - 10/12/18  - change variable names to match class
*                       - update comments
*/  




/********* GLOBAL VARIABLES **********
 * These can be seen by ALL functions
 */

// User-Editable Globals
// These make it easy for the programmer to change interesting things
int diameter = 25;    // diameter of ball
int speedX = 2;       // speed in X direction
int speedY = 2;       // speed in Y direction
color ballColor = color(255, 0, 0); // color of ball (Red, Green, Blue) values 
                                    // value of each color can be 0-255

//  Other Globals:
//  These are for internal use only - the user should not edit them.
int xBoundLeft, xBoundRight, yBoundTop, yBoundBottom; // virtual boundaries for correct bounce
int posX, posY;  // ball position X and Y


/********** PROCESSING BUILT-IN METHODS ************
 *  setup() and draw() 
 *  
 *  These are both special methods in Processing
 *  The compiler looks for both of them, and each has a specific purpose
 */

void setup() {
  // The setup() method runs once at beginning  

  size(640, 320); // set window size
  
  posX = width / 2;  // start ball in center of screen
  posY = height / 2;
  
  xBoundRight = width - diameter/2;  // set boundaries
  yBoundBottom = height - diameter/2;
  xBoundLeft = yBoundTop = diameter/2;
  
  background(255);  // set background color
  
  println("Ready.");
}

void draw() {  
  // The draw() method runs continuously forever, until the program stops
  background(255);  // clear screen
  
  drawCircle(posX, posY, diameter, ballColor);

  update_position();
  check_bounds();
}

/***********  SUPPORTING METHODS ***********
 *  We can also write our own methods, and call them whenever we need them.
 */


void drawCircle(int x, int y, int d, color c) {
  /* Draw a circle with diameter d, and color c
   * 
   * Input Arguments:
   * x: x position for center of circle
   * y: y position for center of circle
   * d: diameter of circle
   * c: RGB color of circle
   */
  
  stroke(c);
  fill(c);
  ellipse(x, y, d, d);
}


void update_position() {
  // Update the position of the ball, using its speed

  posX += speedX;  // same as posX = posX + speedX
  posY += speedY;
}


void check_bounds() {
  // check if ball hits any wall
  // then flip x/y direction if necessary
  // the direction is represented by the sign of the speed (+ or -)

  // check left/right walls
  if (posX <= xBoundLeft || posX >= xBoundRight) {
    speedX *= -1; // same as "speedX = speedX * -1"
                  // also same as "speedX = -speedX"
    println("X Bounce");
  }

  // check top/bottom walls 
  if (posY <= yBoundTop || posY >= yBoundBottom) {
    speedY *= -1;
    println("Y Bounce");
  }
}
