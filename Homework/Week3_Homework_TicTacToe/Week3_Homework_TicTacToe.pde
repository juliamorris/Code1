int x, y;

void setup(){
  size(600, 700);
  background(255);
}

void draw(){
  
  textSize(26);
  fill(150, 10, 130);
  text("TIC TAC TOE: Click for X, Right-click for O", 30, 50);
  
//TIC TAC TOE GRID
  fill(0);
  strokeWeight(10);
  line(width/3, 110, width/3, height-20);
  line(width*2/3, 110, width*2/3, height-20);
  pushMatrix();
  translate(0, 100);
  line(10, 200, width-20, 200);
  line(10, 400, width-20, 400);
  popMatrix();
  
}


void mousePressed(){
  if (mouseButton == RIGHT){
    drawO(mouseX, mouseY);
  } else {
    drawX(mouseX, mouseY);
  }
}

//Functions to draw Xs and Os

void drawX(int x, int y){
  line(x+50, y+50, x-50, y-50);
  line(x+50, y-50, x-50, y+50);
} 
  
void drawO(int x, int y){
  noFill();
  ellipse(x, y, 100, 100);
}