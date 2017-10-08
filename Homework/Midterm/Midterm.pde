int xPos, yPos;
int size;
int xVel, yVel;

void setup(){
  size(500, 500);
  background(0);
  frameRate(100);
  
  size = 100;
  
  xVel = 4;
  yVel = 2;
  
  xPos = width/2;
  yPos = height/2;
  
  instructions();

}

void draw(){

  fill(0);
  rect(0, 140, width, height);
  
  fill(255);
  noStroke();
  ellipse(xPos, yPos, size,size);
  
  xPos = xPos + xVel;
  yPos = yPos + yVel;
  
  if(xPos > width - size/2 || xPos < 0 + size/2){
    xVel = xVel * -1;
  }
  
  if(yPos > height - size/2 || yPos < 0 + size/2){
    yVel = yVel * -1;
  }
  
}

void mousePressed(){
   if(dist(xPos, yPos, mouseX, mouseY)<size){
      size = size-10;
      xVel = xVel + 3;
      yVel = yVel + 3;
   }else{
     size = size + 10;
     xVel = xVel - 3;
     yVel = yVel - 2;
   }
}

void instructions(){
  fill(255, 0, 0);  
  textSize(18);
  if(millis()<1000){
    text("When clicked, the ball with get smaller and move faster.", 10, 50); 
    text("If you miss, the ball will get bigger and move slower.", 10, 80);
    text("Miss three times, you lose. Click 5 times, you win.", 10, 110);
  }else if(millis()>1000){
    fill(0);
    rect(0, 0, width, height);
  }
}