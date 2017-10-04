int numE = 100;
int[] eSize = new int[numE];
int[] eSpeedX = new int[numE];
int[] eSpeedY = new int[numE];
int[] ePosX = new int[numE];
int[] ePosY = new int[numE];
int[] baseColor = new int[numE];

void setup(){
  
 size(1000,1000); 
 
 for(int i = 0; i<numE; i++){
  ePosX[i] = int(random(0, width));
  ePosY[i] = int(random(0, height));
  
  eSpeedX[i] = int(random(-5,5));
  eSpeedY[i] = int(random(-5,5));
  
  eSize[i] =int(random(10,100));
  
  baseColor[i] = color(int(random(0, 50)), int(random(150, 255)), int(random(200, 255)));
 }
}

void draw(){
  background(255);
  
  for(int i = 0; i<numE; i++){
   ePosX[i] = ePosX[i] + eSpeedX[i];
   ePosY[i] = ePosY[i] + eSpeedY[i];
   
   if(eSpeedX[i] == 0){
     eSpeedX[i]=1;
   }
   
   if(eSpeedY[i] == 0){
     eSpeedY[i]=1;
   }
   
   if(ePosX[i] <= 0 || ePosX[i]>=width){
     eSpeedX[i] = eSpeedX[i]*-1;
   }
    
   if(ePosY[i] <= 0 || ePosY[i]>=width){
     eSpeedY[i] = eSpeedY[i]*-1;
   }
   

 }
 
 
  
  
   for(int i = 0; i<numE; i++){
   noStroke();
   fill(baseColor[i]);
   ellipse(ePosX[i], ePosY[i], eSize[i], eSize[i]);
   }
}  

void mousePressed(){
   for(int i = 0; i<numE; i++){
      if(dist(ePosX[i], ePosY[i], mouseX, mouseY)<eSize[i]){
         baseColor[i] = color(int(random(200, 255)), int(random(150, 155)), int(random(150, 255)));
   }
  
}
}