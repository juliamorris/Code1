PFont cinemaText;
PFont cinemaTitle;
PImage imgCurtains;

void setup(){ 
  size(600, 600);
  background(255);
  
  cinemaText = createFont("CinemaText.ttf", 50);
  cinemaTitle = createFont("CinemaTitle.ttf", 70);
  imgCurtains = loadImage("curtains.jpg");
}

void draw(){

  openingScene();
  
  
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  fill(255, 255, 0);
  noStroke();
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

void openingScene(){
    image(imgCurtains, 0, 0, width, height);
  
  textFont(cinemaTitle);
  fill(255);
  textAlign(CENTER);
  text("Welcome to", width/2, 75);
  text("the Cinema", width/2, 150);
  
 
  textFont(cinemaText);
  fill(100, 100, 200);
  textAlign(CENTER);
  text("Press space", width/2, 480);
  text("to select seats", width/2, 530);
  
  pushMatrix();
    translate(100, 300);
    rotate(frameCount/-10);
    star(0, 0, 21, 51, 5);
   popMatrix();
   
  pushMatrix();
    translate(500, 300);
    rotate(frameCount/-10);
    star(0, 0, 21, 51, 5);
   popMatrix();
}