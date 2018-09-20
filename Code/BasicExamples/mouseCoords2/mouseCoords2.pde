/* Doug Brantner
 * Intro to Coding 9/19/18
 *
 * Ball position & size controlled by mouse position.
 * Keep the mouse on the line, to keep the ball circle-shaped
 * Otherwise it gets funny-shaped.
 */

void setup() {
  size(600, 600);
  noFill();  // so you can see the line underneath
}

void draw() {
  background(255);
  line(0, 0, width, height);
  ellipse(mouseX, mouseY, mouseX, mouseY);
}
