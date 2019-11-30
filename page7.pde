float i, x, m, c, d;

void page7Setup() {
  surface.setSize(300,600);
  colorMode(HSB, 100);
  strokeWeight(1);
  i = 10;
  x = 10;
  c = 0;
  background(100);
}
void page7Draw() {
  d = 0;
  m = 210;

  colorMode(HSB, 100);
  stroke(1);

  for (i = 10; i<300; i+=20) {
    fill(c, 100, 100);
    c+=0.4;
    ellipse(i, x, 20, 20);
  }

  if (i >= 300 && x<=300) {
    x += 20;
    i = 10;
  }
  while (m>20) {
    noStroke();
    fill(80-d, 100, 100);
    d+=2.1;
    ellipse(150, 450, m, m);
    m -= 5;
  }
}
