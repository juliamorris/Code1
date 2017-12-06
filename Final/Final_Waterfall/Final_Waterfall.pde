int sceneNumber;

ArrayList particles;

PImage imgWaterfall;
PImage imgGreen;
PImage imgRed;
PImage imgSnow;

int pixelSize = 5;
int cols, rows;

void setup () {
  size(600, 600);
  background(200);
  particles = new ArrayList();
  
  imgWaterfall = loadImage("waterfall.png");
  imgGreen = loadImage("green.png");
  imgRed = loadImage("red.png");
  imgSnow = loadImage("snow.png");

  cols = width/pixelSize;
  rows = height/pixelSize;
}

void draw () {
 
  pointilizedWaterfall();
  
  //randomPointilize(imgRed);
  
  
  switch(sceneNumber){
    case 0: 
    pointilizedGreen();
    break; 
    
    case 1:
    pointilizedRed();
    break; 
    
    case 2: 
    pointilizedSnow();
    break; 
    
    case 3: 
    sceneNumber = 0; 
  }
  waterfall();
  
}

void mousePressed(){
  sceneNumber++; 
}