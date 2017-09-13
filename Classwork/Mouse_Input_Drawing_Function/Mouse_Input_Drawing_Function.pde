color c;
int s;
int xPos, yPos;
int xVel;

void setup(){
  size(1000,1000);
  smooth();
  background(255);
  
  xVel = 10;
}

void draw(){
  background(255, 10);
  if(mousePressed){
    xPos += xVel;
  }
  drawShip(c, xPos, yPos, s);
}

void mousePressed(){
   s = int(random(20, 200));
   c = color(random(0, 255), random(0, 255), random(0, 255));
   drawShip(c, mouseX, mouseY, s);
}


void drawShip(color col, int x, int y, int size){
  noStroke();
  fill(col);
  ellipse(x, y, size*2, size);
  ellipse(x, y-(size/2), size, size*.8);
}