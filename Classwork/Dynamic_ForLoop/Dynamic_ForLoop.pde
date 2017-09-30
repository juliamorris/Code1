

void setup(){
  size(700, 700);
  noStroke();
  
}

void draw(){
  background(255);
  for (int i = 0; i <= width; i+=width/35){
    for (int j = 0; j <= height; j+=height/35){
      float dist = dist (mouseX, mouseY, i, j);
      float c =  map(dist, 0, width, 255, 0); 
      float size = map(dist, 0, width, 10, 50);
      fill(c);
      ellipse(i, j, size, size);  
    }
  }
}