float [] xValues, yValues;

void page1Setup () { 
  colorMode(RGB, 255);
  background(0);
  stroke(255);
  surface.setSize(300, 300); 
  xValues = new float[50];
  yValues = new float[50];
  for (int i = 0; i < xValues.length; i++) {
    xValues[i] = random(0, 300);
  }
  for (int i = 0; i<yValues.length; i++) {
    yValues[i] = random(600);
  }
}
void page1Draw() {
  strokeWeight(2);
  for (int i = 0; i < xValues.length; i++) {
    if (yValues[i] < 150) {
      line(xValues[i], yValues[i], xValues[i], 0);
    } else {
      line(xValues[i], yValues[i], xValues[i], 300);
    }
  }
}
