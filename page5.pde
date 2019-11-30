
void page5Setup() {
  surface.setSize(300,600);
  colorMode(RGB, 255);
  background(0);
  stroke(#BDC0CB);
  strokeWeight(1);

}
void page5Draw() {
  ellipse(mouseX, mouseY, 60, 60);
  fill(mouseX, mouseY, 255);
}
