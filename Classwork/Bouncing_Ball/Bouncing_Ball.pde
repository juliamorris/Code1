float xPos, yPos;
float xVel, yVel;
int diameter;
int r, g, b;


void setup(){
  size(600, 600);
  background(0);
  
  xVel= random(-5, 5);
  yVel= random(-5, 5);
  
  xPos= width/2;
  yPos= height/2;
  
  diameter= 100;
  
  
}

void draw(){
  
  fill(0, 50);
  rect(0, 0, width, height);
  
  fill(r, g, b);
  noStroke();
  ellipse(xPos, yPos, diameter,diameter);
  
  xPos = xPos + xVel;
  yPos = yPos + yVel;
  
  if(xPos > width - diameter/2 || xPos < 0 + diameter/2){
    xVel = xVel * -1;
    r = int(random(0,255));
    g = int(random(0,255));
    b = int(random(0,255));    
  }
  if(yPos > height - diameter/2 || yPos < 0 + diameter/2){
      yVel = yVel * -1;
    r = int(random(0,255));
    g = int(random(0,255));
    b = int(random(0,255));
  }

}

void mousePressed(){
  xPos = mouseX;
  yPos = mouseY;
  
  xVel = random(-5, 5);
  yVel = random(-5, 5);
}