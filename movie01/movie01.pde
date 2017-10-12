import processing.video.*;

Movie video;

void setup() {
  size(600,400);
  video = new Movie(this,"transit.mov");
  video.loop();
  video.speed(2);
}

void movieEvent(Movie video) {
  video.read(); 
}

void mousePressed()  {
  video.jump(5); 
  
}

void draw() {
  image(video,0,0);
  
}