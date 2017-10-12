class Ball {
  int ballSize; 
  float xSpeed;
  float ySpeed;
  float x;
  float y;
  boolean xMovement=true;
  boolean yMovement=true;

  Ball() {
    x=mouseX;
    y=mouseY;
    ballSize = round(random(15, 60));
    xSpeed = round(random(2, 8));
    ySpeed = round(random(2, 7));
    float k=random(1);
    if (k>0.5)
      xMovement=false;
    else
      yMovement=true;
    if (k%0.5 > 0.25 )  
      yMovement=true;
    else 
      yMovement = false;
  }
  Ball(int xPos, int yPos) {
    x=xPos; 
    y=yPos;
    xSpeed = 1;
    ySpeed = 1;
    xMovement=true;
    yMovement=true;
  }


  void display() {
    fill(127, 100);
    stroke(0);
    ellipse(x, y, ballSize, ballSize);
  }

  void move()
  {    
    //X-axis Movement
    if (xMovement) {
      x+=xSpeed;
      if (x>width-ballSize/2)
        xMovement=false;
    } else {
      x-=xSpeed;
      if (x<ballSize/2)
        xMovement=true;
    }

    //Y-axis Movement
    if (yMovement) {
      y+=ySpeed;
      if (y>height-ballSize/2)
        yMovement=false;
    } else {
      y-=ySpeed;
      if (y<ballSize/2)
        yMovement=true;
    }
  }
}