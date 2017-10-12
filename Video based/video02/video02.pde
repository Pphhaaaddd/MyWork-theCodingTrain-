import processing.video.*;
Capture video;

void setup() {
  size(1280, 720,P2D);
  printArray(Capture.list());
  background(0);
  video = new Capture(this, width, height,30);
  video.start();
  noStroke();
  rectMode(CENTER);
}

void draw() {
  
  for (int i=0; i<2000; i++) {
    int x=int(random(width));
    int y=int(random(height));
    color c= video.get(x, y);
    fill(c);
    rect(x, y, 16, 8);
  }
  //image(video,0,0);
}

void captureEvent(Capture video)  {
  video.read();
}