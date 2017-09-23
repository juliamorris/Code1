int x, y;
int x2, y2;
int size;
float dist;
boolean buttonClicked;
boolean button2Clicked;

void setup(){
  size(600, 600);
  x = width/2;
  y = height/2;
  x2 = width/2;
  y2 = height/4;
  size = 100;
}

void draw(){
 
//button 1

  if(buttonClicked){
    background(0);
    fill(255, 0, 0);
  }else{
    background(255);
    fill(0, 255, 0);
  }

  ellipse(x, y, size, size);
  
//button 2
    if(button2Clicked){
    fill(200, 0, 200);
  }else{
    fill(0, 0, 255);
  }
  ellipse(x2, y2, size, size);
  
  //println(calcDistance(x,y));

}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked;
  }
  
  if(calcDistance(x2,y2) <= 50){
    button2Clicked = !button2Clicked;
  }
}

float calcDistance(int xPos, int yPos){
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}