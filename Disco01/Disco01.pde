int w = 10, h=10;


void setup() {
  size(640, 360);
}
void draw() {
  background(50);
  strokeWeight(1);
  for (int i=0; i<width; i+=w) {
    for (int j=0; j<height; j+=h) {
      fill(random(255),random(255),random(255));
      rect(i, j, w, h);
    }
  }
  delay(200);
}