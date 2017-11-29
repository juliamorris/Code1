PImage img;
int pixelSize = 5;
int cols, rows;

void setup(){
  size(800, 425, P3D);
  
  img = loadImage("tardis.jpg");
  
  cols = width/pixelSize;
  rows = height/pixelSize;
}

void draw(){
  background(0);
  
  loadPixels();
  
  for(int i = 0; i < cols; i++){
    for(int j = 0; j< rows; j++){
      int x = i * pixelSize + pixelSize/2;
      int y = j * pixelSize + pixelSize/2;
      int loc = x + y * width;
      
      color c = img.pixels[loc];
      
      float z = (mouseX/(float(width))) * brightness(img.pixels[loc]);
      
      pushMatrix();
        translate(0, 0, z*5);
        fill(c);
        noStroke();
        rectMode(CENTER);
        rect(i*pixelSize, j*pixelSize, pixelSize, pixelSize);
      popMatrix();
    }
  }
  
}