PVector position;
int r = 0;

void setup(){
  size(500, 500);
  background(0);
  
  position = new PVector(0,0);
}

void draw(){
  
  //position.x = r*cos(frameCount) + width/2;
  position.x += 1;
  position.y = r*sin(frameCount) + height/2;
  
  r += 1;
  
  ellipse(position.x, position.y, 10, 10);
}