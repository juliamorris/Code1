int sceneNumber;
int o = 0;

ArrayList particles;

PImage imgWaterfall;
PImage imgGreen;
PImage imgRed;
PImage imgSnow;

int pixelSize = 5;
int cols, rows;

ArrayList<Snow> snowing;
PImage imgFlake;

ArrayList<Flower> flowers;
PImage imgFlower;
int [] flowerLoc;;

PFont textFont;

void setup () {
  size(600, 600);
  background(0);
  particles = new ArrayList();
  
  imgWaterfall = loadImage("waterfall.png");
  imgGreen = loadImage("green.png");
  imgRed = loadImage("red.png");
  imgSnow = loadImage("snow.png");

  cols = width/pixelSize;
  rows = height/pixelSize;
  
  snowing = new ArrayList<Snow>();
  imgFlake = loadImage("flake.png");
  
  flowers = new ArrayList<Flower>();
  imgFlower = loadImage("flower.png");
  
  textFont = createFont("textFont.ttf", 50);
}

void draw () {
   
  textFont(textFont);
  textAlign(CENTER);
  pointilizedWaterfall();
  

  switch(sceneNumber){
    case 0:
    pointilizedGreen(255);
    fill(255);
    text("click to change the season", width/2, 550);
    break; 
    
    case 1:
    pointilizedGreen(255-0);
    pointilizedRed(o*5);
    o++;
    //decrease opacity on first scene + increase opacity on second scene
    fill(255);
    text("please be patient", width/2, 550);
    break; 
    
    case 2:
    pointilizedRed(255-0);
    pointilizedSnow(o*5);
    o++;
    flurrySnow();
    fill(255);
    text("press enter to make it snow", width/2, 550);
    break; 
    
    case 3: 
    pointilizedSnow(255-0);
    pointilizedGreen(o*5);
    o++;
    growFlower();
    fill(255);
    text("press tab to grow flowers", width/2, 550);
    break;
    
    case 4:
    sceneNumber = 0; 
  }
  waterfall();
  
}

void mousePressed(){
  sceneNumber++; 
  o=0;
}

void keyReleased() {
  if (key == ENTER) {
     snowing.add(new Snow());
  }
  
  if (key == TAB) {
     flowers.add(new Flower());
  }
}