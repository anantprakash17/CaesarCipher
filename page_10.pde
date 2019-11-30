float a, b, c1, d1, e, f, g;
void page10Setup() {
  surface.setSize(300,600);
   colorMode(HSB, 100);
  a = 150;
  b = 0;
  c1 = 20;
  d1 = 300;
  e = 0;
  f = 10;
  g = 0;
  background(0);
}
void page10Draw() {
  fill(g%100, 99, 99);
  g++;

  noStroke();
  ellipse(a, b, c1, c1);
  b+=2;
  c1+=0.5;
  ellipse(e, d1, f, f);
  e+=0.5;
  f+=0.1;
}
