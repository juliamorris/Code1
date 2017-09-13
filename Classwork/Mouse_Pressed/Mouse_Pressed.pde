int brushSize;

void setup(){
  size(1000,1000);
  background(255);
  brushSize = 10;
}

void draw(){
  if(mousePressed){
    fill(random(0, 255), random(0, 255), random(0, 255));
    noStroke();
    ellipse(mouseX, mouseY, brushSize, brushSize);
  }  

//if(keyPressed){
////  brushSize += 10; 
//}

}

//void mousePressed(){
//  fill(random(0, 255), random(0, 255), random(0, 255));
//  noStroke();
//  ellipse(mouseX, mouseY, brushSize, brushSize);
//}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && brushSize <= 500){
        brushSize += 10; 
  } else if(keyCode == DOWN && brushSize > 10){
        brushSize -= 10; 
    }
  }
}