
void page9Setup() {
   background(0, 0, 100);
  colorMode(HSB, 100); 
}
void page9Draw() {

  for (float a = 0; a<mouseY; a += 10) {
    for (float i = 0; i<mouseX; i += 10) {
      noStroke();
      fill((a*i*.263)%100, 100, 100);
      ellipse(i+5, a+5, 10, 10);
    }
  }
}
