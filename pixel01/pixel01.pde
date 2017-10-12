PImage tiger;

void setup() {
  size(640, 480);
  tiger = loadImage("tiger2.jpg");
  background(0);
}


void draw() {

  //image(tiger,0,0);
  loadPixels();
  tiger.loadPixels();
  for (int x=0; x<width-1; x++) {
    for (int y=0; y<height; y++) {
      int index = x+y*width;
      int indexNext = x+1+y*width;

      float brt = brightness(tiger.pixels[index]);
      float brtNext = brightness(tiger.pixels[indexNext]);

      float diff = abs(brt-brtNext);
      if (diff >25)
        pixels[index] = color(diff);
      else
        pixels[index] = color(0);

      //float r = red(tiger.pixels[index]);
      //float g = green(tiger.pixels[index]);
      //float b = blue(tiger.pixels[index]);

      //float brt = brightness(tiger.pixels[index]);
      //if (brt > mouseX/3)
      //  pixels[index] = color(255);
      //else
      //  pixels[index] = color(0);

      //float d = dist(x, y, mouseX, mouseY);
      //float factor = map(d,0,220,2,0);

      //float r = red(tiger.pixels[index]);
      //float g = green(tiger.pixels[index]);
      //float b = blue(tiger.pixels[index]);
      //pixels[index] = color(r*factor,g*factor,b*factor);
    }
  }
  updatePixels();
}