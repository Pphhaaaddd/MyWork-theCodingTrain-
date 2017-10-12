ArrayList<Bubble> b = new ArrayList<Bubble>();
ArrayList<Ball> b1 = new ArrayList<Ball>();

void setup() {
  size(640, 360, P2D);
  //for (int i=0;i<b.length;i++)
  //  b[i]=new Bubble();
}

void draw() {
  background(0);

  for (Bubble b:b) {
    b.display();
    b.ascend();
  }
  for(Ball b:b1)  {
    b.display();
    b.move();
  }
}

void mousePressed() {
  //b.add(new Bubble(mouseX,mouseY));
  b1.add(new Ball());
}

void keyPressed()  {
  if(key=='r')  {
    if(b1.size() > 0)
       b1.remove(round(random(b1.size()-1)));
  }
}