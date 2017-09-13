float x1, y1;
float x2, y2;
float r, g;


void setup(){
  size(1000, 1000);
  noStroke();
}

void draw(){
  
  r = map(mouseX, 0, width, 0, 255);
  g = map(mouseY, 0, height, 0, 255);
  background(r, g, 120);
  
  fill(255);
  
  x1 = map(mouseX, 0, width, 0, 300);
  y1 = map(mouseY, 0, height, 100, 400);
  ellipse(x1, y1, 100, 100);
  
  ellipse(x2, y2, 100, 100);
  if(mouseX<width/2){
  x2 = mouseX;
  y2 = mouseY;
  }else{
     x2 = width/2;
     y2 = mouseY;
  }
}