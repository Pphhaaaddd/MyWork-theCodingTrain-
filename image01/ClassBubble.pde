class Bubble {
  PVector location, velocity;
  float size;
  PImage img;

  Bubble(PImage tempImg) {
    location = new PVector(random(0, width), height);
    size = random(10,60); 
    velocity = new PVector(0, -size*3/40);
    
    img = tempImg;
  }

  void display() {
    imageMode(CENTER);
    image(img,location.x,location.y,size,size);
  }

  void giveColor() {
    fill(255);
    stroke(127);
  }

  void ascend() {
    velocity.x = random(-size/40, size/40);
    location.add(velocity);

    if (location.y < -size)  {
      location = new PVector(random(0, width), height);
    }
    if (location.x > width+size)
      location.x = 0;
    else if (location.x < -size)
      location.x = width;
  }
}