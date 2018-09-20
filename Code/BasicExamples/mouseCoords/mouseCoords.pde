/*
 * Doug Brantner
 * Intro to Coding 9/19/18
 * Mouse Coordinates demo
 */
 
String s;

void setup() {
  size(600, 600);
  textSize(24);
}

void draw() {
  background(0);  // clear background
  s = "x:" + mouseX + ", " + "y:" + mouseY; // update text String
  text(s, mouseX, mouseY);
}
