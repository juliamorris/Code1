class Kernel{
  int velX, velY;
  int posX, posY;
  
  Kernel(){
   velX = int(random(-5, 5));
   velY = int(random(-5, 5));
   posX = int(random(0, width));
   posY = int(random(0, height));
  }
  
  void drawKernel(){
    image(imgKernel, posX, posY, 50, 50);
  }
  
  void floatKernel(){
    posX += velX;
    posY += velY;
    
    if(posX>width && velX>0){
      posX = -20;
    }
    
    if(posY>width && velY>0){
      posY = -20;
    }
  }
}