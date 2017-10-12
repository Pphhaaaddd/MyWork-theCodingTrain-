
void setup() {
  size(640, 360);
  background(0);
}
void draw() {
 
  drawStar(round(random(width)), round(random(height)));
}



void drawStar(int x, int y) {
  fill(random(255), random(255), random(255));
  strokeWeight(0);

  beginShape();
  vertex(x, y-12); //1
  vertex(x+2, y-5); //2
  vertex(x+13, y-4); //3
  vertex(x+5, y+2); //4
  vertex(x+9, y+9); //5

  vertex(x, y+3); //6
  vertex(x-9, y+9); //7
  vertex(x-5, y+2); //8
  vertex(x-13, y-4); //9
  vertex(x-2, y-5); //10
  endShape(CLOSE);
}