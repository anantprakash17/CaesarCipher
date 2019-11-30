float ellipseX, ellipseY, colour;


void page8Setup() {
  colorMode(HSB, 100);
  stroke(0);
  background(0);
  ellipseX = 0;
  ellipseY = 0;
  colour = 0;
}
void page8Draw() {
  stroke(0);
  fill(colour, 100, 100);
  ellipse(ellipseX, ellipseY, 50, 50);
  ellipseX+=0.9;
  ellipseY+=11;
  colour+=2;
  if (ellipseY>=600) {
    ellipseY=0;
    colour -=100;
  }
}
