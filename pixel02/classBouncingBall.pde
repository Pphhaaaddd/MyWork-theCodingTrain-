class BouncingBall {

  int ballSize;
  float alpha;
  PVector location, velocity;

  BouncingBall(int getSize, float getAlpha) {
    ballSize = getSize;
    alpha = getAlpha;
    velocity = new PVector(random(-5, 5), random(-5, 5)); 
    location = new PVector(width/2,height/2);
  }
  void display()
  {
    getColor();
    ellipse(location.x, location.y, ballSize, ballSize);
  }

  void getColor() {
    color c = video.get(int(location.x), int(location.y));
    fill(c);
    noStroke();
  }

  void update() {

    if (location.x>width-ballSize/2 || location.x<ballSize/2) 
      velocity.x=-velocity.x;  //X-axis Movement

    if (location.y>height-ballSize/2 || location.y<ballSize/2) 
      velocity.y=-velocity.y;  //Y-axis Movement

    location.add(velocity);
  }
}