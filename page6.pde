
void page6Setup() {
  surface.setSize(900,900);
  background(255);
  colorMode(RGB, 255);
}
void page6Draw() {
  noFill();

  //bottom
  stroke(#FA4955);//red
  strokeWeight(15);
  arc(400, 620, 500, 500, radians(-100), radians(70));

  stroke(#B4DB0B);//light green
  strokeWeight(25);
  arc(420, 593, 500, 500, radians(-100), radians(50));

  stroke(#0BDB13);//green
  strokeWeight(15);
  arc(400, 600, 500, 500, radians(-120), radians(60));

  stroke(#4B49FA);//blue
  strokeWeight(10);
  arc(420, 610, 500, 500, radians(-120), radians(60));

  stroke(#C810E5);//pink
  strokeWeight(10);
  arc(390, 580, 500, 500, radians(-120), radians(60));



  //top

  stroke(#FA4955);
  strokeWeight(15);
  arc(280, 393, 500, 500, radians(80), radians(250));

  stroke(#B4DB0B);
  strokeWeight(25);
  arc(260, 350, 500, 500, radians(70), radians(250));

  stroke(#0BDB13);
  strokeWeight(15);
  arc(286, 375, 500, 500, radians(95), radians(270));

  stroke(#4B49FA);
  strokeWeight(10);
  arc(270, 360, 500, 500, radians(90), radians(250));

  stroke(#C810E5);
  strokeWeight(10);
  arc(285, 356, 500, 500, radians(70), radians(260));
}
