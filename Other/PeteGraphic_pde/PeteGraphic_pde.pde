int grid = 50;
int size = 80; //size of squiggles
int ellipseSize =35; //size of circles

PImage imgA;
PImage imgB;
PImage imgC;
PImage imgD;


void setup(){
  fullScreen();
  background(255);
  
  imgA = loadImage("squiggleA.png");
  imgB = loadImage("squiggleB.png");  
  imgC = loadImage("squiggleC.png");  
  imgD = loadImage("squiggleD.png");
}


void draw(){
  
  background(255);
  
  pushMatrix();
  squiggleGrid();
  popMatrix();
  
  pushMatrix();
  translate(450, 50);
  squiggleGrid();
  popMatrix();
  
  pushMatrix();
  translate(900,-50);
  squiggleGrid();
  popMatrix();
  
  grid();
}


void grid(){
  stroke(50, 75, 150); //Color of the grid (r, g, b)
  for (int i = 0; i < width; i+=grid) {
    line (i, 0, i, height);
  }
  for (int i = 0; i < height; i+=grid) {
    line (0, i, width, i);
  }
}

void squiggleA(int xPos, int yPos){
  pushMatrix();
  translate(xPos, yPos);
  rotate(frameCount/-20);
  image(imgA, 0-size/2, 0-size/2, size, size);
  popMatrix();
}

void squiggleB(int xPos, int yPos){
  pushMatrix();
  translate(xPos, yPos);
  rotate(frameCount/20);
  image(imgB, 0-size/2, 0-size/2, size, size);
  popMatrix();
}

void squiggleC(int xPos, int yPos){
  pushMatrix();
  translate(xPos, yPos);
  rotate(frameCount/-20);
  image(imgC, 0-size/2, 0-size/2, size, size);
  popMatrix();
}

void squiggleD(int xPos, int yPos){
  pushMatrix();
  translate(xPos, yPos);
  rotate(frameCount/20);
  image(imgD, 0-size/2, 0-size/2, size, size);
  popMatrix();
}

void squiggleGrid(){
  squiggleA(100, 700);
  squiggleA(400, 200);
  squiggleB(200, 300);
  squiggleB(400, 400);
  squiggleC(300, 100);
  squiggleC(200, 500);
  squiggleD(300, 800);
  squiggleD(100, 600);
  
  fill(0);
  noStroke();
  ellipse(50, 200, ellipseSize, ellipseSize);
  ellipse(200, 600, ellipseSize, ellipseSize);
  ellipse(300, 400, ellipseSize, ellipseSize);
}