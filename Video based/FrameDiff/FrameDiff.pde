import processing.video.*;
Capture video;
int numPixels;
int[] previousFrame;


void setup() {
  size(640, 480);
  background(0);
  video = new Capture(this, width, height);
  video.start();
  numPixels = video.width*video.height;
  previousFrame = new int[numPixels];
  loadPixels();
}

void draw() {
  if (video.available()) {
    video.read();
    video.loadPixels();
    int movementSum = 0;

    for (int loc=0; loc<numPixels; loc++) {
      color currentColor = video.pixels[loc];
      color prevColor = previousFrame[loc];
      //int currentR = (currentColor >> 16) & 0xFF; //Get the red parts
      //int currentG = (currentColor >> 8) & 0xFF;
      //int currentB = currentColor & 0xFF;

      //int prevR = (prevColor >> 16) & 0xFF;
      //int prevG = (prevColor >> 8) & 0xFF;
      //int prevB = prevColor & 0xFF;

      //int diffR = abs(currentR - prevR);
      //int diffG = abs(currentG - prevG);
      //int diffB = abs(currentB - prevB);

      float currentBrt = brightness(currentColor);
      float prevBrt = brightness(prevColor);
      movementSum += abs(currentBrt - prevBrt);
      
      pixels[loc] = color(currentBrt - prevBrt);
      previousFrame[loc] = currentColor;
    }
    if (movementSum > 0) {
      updatePixels();
      //println(movementSum); // Print total amount of movement
    }
  }
}