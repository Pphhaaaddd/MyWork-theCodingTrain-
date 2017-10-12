import processing.video.*;
Capture video;

void setup() {
  size(160, 120, P2D);
  printArray(Capture.list());
  video = new Capture(this, width, height);
  video.start();
  background(0);
  //noStroke();
}

void draw() {
  loadPixels();
  video.loadPixels();
  for (int x=0; x<width; x++) { 
    for (int y=0; y<height-1; y++) {
      int index = x+y*width;
      color c = video.get(x,y);
      //int indexNext = x+1+y*width;      
      
      //float brt = brightness(video.pixels[index]);
      //float brtNext = brightness(video.pixels[indexNext]);
      
      //float diff = abs(brt-brtNext);
      //if(diff>1)
      //  pixels[index] = color(diff);
      //else
      //  pixels[index] = color(0);
      pixels[index] = c;
    }
  }
  updatePixels();
  video.read();
}

void captureEvent(Capture video)  {
  
}