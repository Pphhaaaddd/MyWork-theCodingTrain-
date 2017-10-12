void setup() {
  size(640, 380);
  background(255);
}

void draw() {
  float speed;
  speed = (pmouseX-mouseX)*(pmouseX-mouseX) + (pmouseY-mouseY)*(pmouseY-mouseY);
  strokeWeight(150/((speed+100)));
  line(pmouseX, pmouseY, mouseX, mouseY);
}