int ballSize=30; 
float xspeed=1,yspeed=1,tempx,tempy;
int x1=15, y1=15;
int x2=40, y2=300;
boolean xMovement = true, yMovement=true;


void setup() {
  size(640, 360);
}

void draw() {
  //background(50);
  //fill(random(255), random(255), random(255)););
  drawBall();
}

void drawBall()
{
  ellipse(x1, y1, ballSize, ballSize);


  //X-axis Movement
  if (xMovement) {
    x1+=xspeed;
    if (x1>width-ballSize/2)
      xMovement=false;
  } else {
    x1-=xspeed;
    if (x1<ballSize/2)
      xMovement=true;
  }

  //Y-axis Movement
  if (yMovement) {
    y1+=yspeed;
    if (y1>height-ballSize/2)
      yMovement=false;
  } else {
    y1-=yspeed;
    if (y1<ballSize/2)
      yMovement=true;
  }
}
void keyPressed()
{
  if (key == 'a' || key == 'A')
    ballSize*=1.05;
  if (key == 'z')
    if (ballSize>=25)
      ballSize/=1.05;
  if (key == 's')
    xspeed++;
  if (key == 'x')
    if (xspeed >= 1)
      xspeed--;
      
  if (key == 'd')
    yspeed++;
  if (key == 'c')
    if (yspeed >= 1)
      yspeed--;
}

void mousePressed() {
  tempx = xspeed; tempy = yspeed;
  xspeed = 0; yspeed = 0;
  x1 = mouseX;
  y1 = mouseY;
  float dir=random(4);
  if (dir<2)
    yMovement = false;
  else
    yMovement = true;
  if (dir%2 < 1)
    xMovement = false;
  else  
    xMovement = true;
  println(dir);
}

void mouseReleased() {
  xspeed = tempx; yspeed = tempy;
}