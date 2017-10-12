void setup() {
  size(640, 360);
}

void draw() {
  //background(255);
  float centx = mouseX; 
  float centy = mouseY;
  float w=200; 
  float h=100;
  fill(255);
  ellipse(centx, centy, w, h); //faceoutline
  stroke(255, 0, 0); 
  fill(200, 100, 0);
  rect(centx-w*125/610, centy+h*70/330, w*250/610, h*50/330); //mouth

  stroke(0);  
  fill(0, 0, 255, 128);
  ellipse(centx-w*150/610, centy-h*80/330, w*30/610, h*30/330); //Eye1
  //line(320-150-50,100-30,320-150+50,100-30-15); //brow1
  ellipse(centx+w*150/610, centy-h*80/330, w*30/610, h*30/330); //Eye2
  //line(320+150+50,100-30,320+150-50,100-30-15); //brow2

  ellipse(centx, centy+h*10/330, w*30/610, h*30/330); //nose
}