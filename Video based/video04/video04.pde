import processing.video.*;
Capture video;
int current = 0;

void setup() {
  size(1000, 480);
  video = new Capture(this, 640, 480);
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  copy(video, width/2, 0, 1, height, current, 0, 1, height);
  current++;
  if (current > width)
    current=0;
}