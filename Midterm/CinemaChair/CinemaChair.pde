PImage imgAvailable;
PImage imgTaken;
PImage imgSelected;
int x, y;
int size;
boolean selected = false;

void setup(){
  size(600, 600);
  imgAvailable = loadImage("available.jpg");
  imgSelected = loadImage("selected.jpg");
  background(255);
  int x = 10;
  int y = 10;
  size = 50;
}

void draw(){
  background(255);
  
  if(selected == false){
    image(imgAvailable, x, y, size, size);
  }
 
  if(selected == true){
    image(imgSelected, x, y, size, size);
  }
  
    if(mousePressed){
      if(mouseX>=x && mouseX<x+size && mouseY>=y && mouseY<y+size){
      selected = true;
      }
    }
    
    if(mouseX>=x && mouseX<x+size && mouseY>=y && mouseY<y+size){
      textSize(24);
      fill(0);
      text("message", width/2, height/2);
    }
    
    if(mouseX>=x && mouseX<x+size && mouseY>=y && mouseY<y+size){
      
    }
}

void openingScene(){
  
  
}

void closingScene(){
  
}