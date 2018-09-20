/*  Doug Brantner
 *  Intro to Coding 9/19/18
 *  Screen Grid demo
 */

int nDivs = 4;  // global variable - # of screen divisions

void setup() {
  size(640, 320);
  stroke(0);
  fill(0);
  noLoop();
  //frameRate(2);
}

void draw() {
  background(255);

  xgrid(nDivs);
  ygrid(nDivs);
  //nDivs++;
}

void xgrid(int divs) {
  // draw vertical gridlines
  // divs = # of divisions to draw
  
  int spacing = width / divs;  // spacing between divisions
  
  for (int x = spacing; x < width; x += spacing) {
    line(x, 0, x, height);
    //println("xgrid: " + x);
  }
}

void ygrid(int divs) {
  // draw horizontal gridlines
  // divs = # of divisions to draw
  
  int spacing = height / divs;
  
  for (int y = spacing; y < height; y += spacing) {
    line(0, y, width, y);
    //println("ygrid: " + y);
  }
}
