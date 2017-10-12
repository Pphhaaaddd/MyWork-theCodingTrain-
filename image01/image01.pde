PImage[] flower = new PImage[5];
ArrayList<Bubble> b = new ArrayList<Bubble>();

void setup() {
  size(640, 320);
  for (int i=0;i<flower.length;i++)
  flower[i] = loadImage("flower"+i+".png");
}

void draw() {
  background(0);

  for (Bubble b : b) {
    b.ascend();
    b.display();
  }
}

void mousePressed() {
  b.add(new Bubble(flower[int(random(0,flower.length))]));
}

void keyPressed()  {
  if(key == 'r')  
    b.remove(0);   
  
}