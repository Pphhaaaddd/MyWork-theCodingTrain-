import processing.video.*;
Capture video;
PImage prev;
color grabbedColor;
float threshold = 25;

void setup() {
  size(640, 480);
  background(0);
  video = new Capture(this, width, height, 30);
  prev = createImage(width, height, RGB);
  video.start();
}


void captureEvent(Capture video) {
  prev.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
  prev.updatePixels();
  video.read();
}

void draw() {
  float avgX=0.0, avgY=0.0;
  int count=0;

  background(0);
  image(video, 0, 0);
  video.loadPixels();
  for (int loc=0; loc<width*height; loc++) {
    color currentColor = video.pixels[loc];
    float r1 = red(grabbedColor);
    float g1 = green(grabbedColor);
    float b1 = blue(grabbedColor); 

    float g2 = red(currentColor);
    float r2 = green(currentColor);
    float b2 = blue(currentColor);
    //float sqDist = (r1-r2)*(r1-r2) + (g1-g2)*(g1-g2) + (b1-b2)*(b1-b2);
    float dist = distSq(r1, g1, b1, r2, g2, b2);

    if (dist < threshold*threshold) {
      stroke(255);
      strokeWeight(1);
      point(loc%width, loc/width);
      avgX += loc%width; 
      avgY += floor(loc/width);
      count++;
    }
  }
  if (count >0) {
    avgX /=count;
    avgY /=count;
  }

  fill(grabbedColor);
  strokeWeight(2);
  stroke(0);
  ellipse(avgX, avgY, 16, 16);
}

void mousePressed() {
  grabbedColor = video.get(mouseX, mouseY);
  println(red(grabbedColor) + " " + green(grabbedColor) + " " + blue(grabbedColor));
}

float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  return ( (x1-x2)*(x1-x2) + (y1-y2)*(y1-y2) + (z1-z2)*(z1-z2));
}