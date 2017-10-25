int sceneNumber = 0;

void setup(){
  fullScreen();
}

void draw(){
  switch(sceneNumber){
    case 0 :
      scene0();
      break;
    case 1 :
      scene1();
      break;
  }
  
  fill(255);
  rectMode(CENTER);
  rect(width/2, height/2, 100, 100);
  if(mouseX > (width/2 - 50) && mouseX < (width/2 + 50) &&
    mouseY > (height/2 - 50) && mouseY < (height/2 + 50)){
      sceneNumber = 1;
    }else{
      sceneNumber = 0;
    }
}

void scene0(){
  background(255, 0, 255);
}

void scene1(){
  background(0, 255, 255);
}