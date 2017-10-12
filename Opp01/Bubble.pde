class Bubble {
  int x, y, r, speed;

  Bubble() {
    speed =round(random(4)+1);
    r=round(random(5, 55));
    x=round(random(r/2, width-r/2));
    y=round(random(height+r));
  }

  Bubble(int size) {
    speed =round(random(4));
    r=size;
    x=round(random(r/2, width-r/2));
    y=height+r;
  }

  Bubble(int x1, int y1) {
    speed =round(random(4)+1);
    r=round(random(5, 50));
    x=x1;
    y=y1;
  }

  Bubble(int x1, int y1, int size) {
    speed =round(random(4));
    r=size;
    x=x1;
    y=y1;
  }

  void display() {

    stroke(0);
    fill(127, 127);
    ellipse(x, y, 2*r, 2*r);
  }

  void ascend() {
    if (y>-r)    y-=speed;
    else y=height+r;
    x = x + round(random(-speed, speed));
    if (x < -r*2)
      x = width+r*2;
    else if (x>width+r*2)
      x = -r*2;
  }

  boolean overlaps(Bubble b2) {
    float sqd = (x-b2.x)*(x-b2.x) + (b2.y -y)*(b2.y -y);
    if (sqd < (r + b2.r)*(r+b2.r))
      return true;
    return false;
  }
}