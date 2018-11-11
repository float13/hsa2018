/*
* Doug Brantner
* Bouncing Ball Example
* Processing 3/Java
* 9/12/18
*
* Version: 01
*
* Updates - 10/12/18  - change variable names to match class
*                     - update comments
*
*         - 10/17/18  - change to version 01
*                     - add in mouse click event
*                     - add points/turn into gamet q
*/  

/********* GLOBAL VARIABLES **********
 * These can be seen by ALL functions
 */

// User-Editable Globals
// These make it easy for the programmer to change interesting things
int diameter = 40;    // diameter of ball
int speedX = 2;       // speed in X direction
int speedY = 2;       // speed in Y direction
color ballColor = color(255, 0, 0);   // color of ball (R, G, B)
color textColor = color(0, 0, 0);     // color for on-screen text

//  Other Globals:
//  These should not be touched by the user - they only have meaning inside the program.
int xBoundLeft, xBoundRight, yBoundTop, yBoundBottom; // virtual boundaries for correct bounce
int posX, posY; // ball position X and Y
int radius;     // radius of ball (calculated from diameter
int points;     // counter for player's points


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
  
  radius = ceil(diameter / 2.0);  
  xBoundRight = width - radius;  // set boundaries
  yBoundBottom = height - radius;
  xBoundLeft = yBoundTop = radius;

  points = 0;
  
  background(255);  // set background color
  
  println("Bouncing Ball Game: ");
  println("Click the ball with the mouse to earn points!");
  println("Press the 'R' key to reset the points.");
}

void draw() {  
  // The draw() method runs continuously forever, until the program stops
  background(255);  // clear screen
  
  drawCircle(posX, posY, diameter, ballColor);
  drawText("Score: " + points, 50, 50, textColor);

  update_position();
  check_bounds();
}


/***********  BUILT-IN EVENTS ***********
 * These are also built-in Processing methods
 * but they are optional.
 * They are called automatically when an event happens.
 */

void mouseClicked() {
  if (isInside(mouseX, mouseY)) {
    points++; // add 1 to user's score
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    // use R key to reset the score
    points = 0;
    println("Reset Points.");
  }
}


/***********  OTHER METHODS ***********
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

void drawText(String s, int x, int y, color c) {
  /* Draw a circle with diameter d, and color c
   * 
   * Input Arguments:
   * s: String to print
   * x: x position for text
   * y: y position for text
   * c: RGB color of text
   */

  stroke(c);
  fill(c);
  text(s, x, y);
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
  }

  // check top/bottom walls 
  if (posY <= yBoundTop || posY >= yBoundBottom) {
    speedY *= -1;
  }
}

boolean isInside(int x, int y) {
  /* Return true if point (x, y) is inside the circle
   * otherwise return false.
   *
   * x, y: coordinates of point to check
   */

  if (dist(x, y, posX, posY) <= radius) {
    return true;
  }
  else {
    return false;
  }
}
