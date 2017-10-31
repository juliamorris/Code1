//I think that I need to create an array with for the explosions 
//but I am confused on how the PVector will play into this.
//I also think I might need a class to make the explosions.

PVector position;
int x, y;
int radius = 0;
int r, g, b;

void setup(){
  size(500, 500);
  background(0, 0, 20);
  
  position = new PVector(0,0);
  
  r = int(random(150, 250));
  b = int(random(150, 250));
  g = int(random(150, 250));

}

void draw(){
  fill(0, 0, 20, 10);
  rect(0, 0, width, height);
  
  explosion(x, y);
}

void mousePressed(){
  x = mouseX;
  y = mouseY;
}

void explosion(int xLocation, int yLocation){
  position.x = radius*cos(frameCount) + xLocation;
  position.y = radius*sin(frameCount) + yLocation;
  
  radius += 1;
  
  fill(r, g, b);
  noStroke();
  ellipse(position.x, position.y, 5, 5);
}