public void setup() {
  size(1000, 1000);
  colorMode(HSB);
  background(12);
}

public void draw() {
  stroke(mouseY/4, 255, 255, 5);
  noFill();
  tryangle(500, 500, mouseX*0.8);
  
  noStroke();
  fill(0, 0, 0, 20);
  rect(0, 0, 1000, 1000);
}

public void tryangle(float x, float y, float side) {
  strokeWeight(side/20);
  triangle(x, y-side/sqrt(3), x-side/2, y+sqrt(3)*side/6, x+side/2, y+sqrt(3)*side/6);
  if (side > 20) {
    tryangle(x-side/4, y+sqrt(3)*side/12, side/2);
    tryangle(x+side/4, y+sqrt(3)*side/12, side/2);
    tryangle(x, y-side/sqrt(3)/2, side/2);
  }
}
