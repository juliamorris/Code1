int x, y, x2, y2; 
int size; 
float dist; 
boolean buttonClicked; 
boolean buttonClicked2; 
int objectSize;

void setup(){
  size(600, 600); 
  x = 200; 
  y = 100; 
  x2= 400;  
  y2= 100; 
  size = 100; 
}

void draw(){
  
  if(buttonClicked){
     objectSize = int(map(mouseX, 0, width, 0, 100));
     drawCircle();
  }else{
    objectSize = 5;
  }
  
  if(buttonClicked2){
    objectSize = int(map(mouseX, 0, width, 0, 100));
    drawSquare();
  }else{
    objectSize = 5;
  }
  
  fill(0, 250, 0);
  ellipse(x, y, size, size);  
  ellipse(x2, y2, size, size);  
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
  if(calcDistance(x2, y2) <=size/2){
    buttonClicked2 =!buttonClicked2; 
  }
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}

void drawSquare(){
    background(0);
    fill(0, 0, 255); 
      for (int i = 0; i <=width; i +=50){
      for (int j = 0; j <= height; j +=50){
          rect(i, j, objectSize, objectSize); 
      }
      }
}

void drawCircle(){
    background(255);
    fill(255, 0, 0); 
      for (int i = 0; i <=width; i +=50){
      for (int j = 0; j <= height; j +=50){
          ellipse(i, j, objectSize, objectSize); 
      }
      }
}