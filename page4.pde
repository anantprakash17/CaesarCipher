void page4Setup() {
  surface.setSize(600, 480);
  background(#40A5F5);
  colorMode(RGB, 255);
}
void page4Draw() {
  noStroke();
  fill(#FAF430);
  ellipse(127, 250, 100, 100);
  stroke(#F3FA32);
  strokeWeight(2);
  line(127, 250, 85, 187);
  line(127, 250, 190, 205);
  line(127, 250, 64, 205);
  line(127, 250, 200, 230);
  line(127, 250, 52, 230);
  line(127, 250, 127, 170);
  line(127, 250, 148, 175);
  line(127, 250, 106, 175 );
  line(127, 250, 169, 187);
  stroke(0);
  strokeWeight(1);
  fill(#40F596);
  rect(0, 250, 600, 250);
  fill(#FA3236);
  rect(400, 180, 140, 120);
  fill(255);
  rect(455, 220, 35, 70);
  strokeWeight(10);
  point(465, 254);
  strokeWeight(1);
  fill(0);
  triangle(471, 116, 557, 180, 380, 180);
}
