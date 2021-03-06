//I updated this program with a for loop to create
//the rotating star pattern when the button is clicked

int x, y;
int size;
float dist;
boolean buttonClicked;
int xRay, yRay;

void setup(){
  size(600, 600);
  x = width/2;
  y = height/2;
  size = 200;
}

void draw(){
  
  noStroke();


  if(buttonClicked){
    drawNight();
  }else{
    drawDay();
  }

  
  
  //println(calcDistance(x,y));

}

void mousePressed(){
  if(calcDistance(x,y) <= size/2){
    buttonClicked = !buttonClicked;
  }
  
}

float calcDistance(int xPos, int yPos){
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}

void drawNight(){

  frameRate(300);
  
  background(0, 0, 50);
  fill(255, 255, 240);
  ellipse(x, y, size, size);
  fill(0, 0, 50);
  ellipse(x+size/2, y, size, size);
  
  for (int i = 0; i <=width; i +=50){
  for (int j = 0; j <= height; j +=50){ 
   pushMatrix();
    translate(i, j+25);
    rotate(frameCount/-100);
    star(0, 0, 7, 17, 5);
   popMatrix();
  }
  }
}
  
void drawDay(){
  background(50, 100, 250);
  fill(255, 255, 100);
  ellipse(x, y, size, size);
  drawRays();
}

void drawRays(){
  frameRate(3);
  stroke(255, 255, 100);
  strokeWeight(3);
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
  individualRay();
}

void individualRay(){
  pushMatrix();
  translate(width/2, height/2);
  rotate(random(0, 2*3.14));
  xRay = 10;
  yRay = 10;
  line(width/2, height/2, xRay, yRay);
  popMatrix();
}






//found this code on Processing.org
void star(float x, float y, float radius1, float radius2, int npoints) {
  fill(255);
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}