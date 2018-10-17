/*
*    Doug Brantner
*    Bouncing Ball Example
*    Processing 3/Java
*    9/12/18
*
*    Update - 10/12/18  - change variable names to match class
*                       - update comments
*/  

/*
 * Global Variables
 * These can be seen by ALL functions
 */

// User-Editable Globals
// These make it easy for the programmer to change cool things
int diameter = 25;    // diameter of ball
int speedX = 2;       // speed in X direction
int speedY = 2;       // speed in Y direction

//  Other Globals:
//  These should not be touched by the user - they only have meaning inside the program.
int xBoundLeft, xBoundRight, yBoundTop, yBoundBottom; // virtual boundaries for correct bounce
int posX, posY;  // ball position X and Y

/*  Processing Built-In Methods
 *  setup() and draw() are both special methods in Processing
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
  
  ellipse(posX, posY, diameter, diameter);  // draw ball

  update_position();
  check_bounds();
}

/*  SUPPORTING METHODS
 *  We make these up ourselves, and they only run when we call them.
 */

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
  }

  // check top/bottom walls 
  if (posY <= yBoundTop || posY >= yBoundBottom) {
    speedY *= -1;
  }
}
