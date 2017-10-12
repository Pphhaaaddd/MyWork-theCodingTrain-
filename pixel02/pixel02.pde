import processing.video.*;
Capture video;
PImage butterfly;
ArrayList<BouncingBall> b1=new ArrayList<BouncingBall>();

void setup() {
  size(640, 480, P2D);
  video = new Capture(this,width,height);
  video.start();
  butterfly = loadImage("butterfly1.jpg");
  background(0);
  for (int i=0; i<400; i++)
    b1.add(new BouncingBall(10, 25));
}

void draw() {
  //image(butterfly,0,0);
  //for (int i=0; i<500; i++) {
  //  int x=int(random(width));
  //  int y=int(random(height));


  //  fill(c, 30);
  //  noStroke();
  //  ellipse(x, y, 5, 5);
  //}
  for (BouncingBall b1 : b1) {
    b1.update();
    b1.display();
  }
}

void captureEvent(Capture video) {
  video.read();
}