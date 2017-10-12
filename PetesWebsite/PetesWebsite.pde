int x, y, size;

void setup(){
  background(255);
  size(600, 600);
  
  x = 100;
  y = 100;
  size = 10;
}


void draw(){
  fill(0, 80, 0);
  rect(x, y, size, size);
}