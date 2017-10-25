Kernel [] corn; 
int num = 20;

PImage imgKernel;

void setup(){
  size(600,600);
  background(0);
  
  imgKernel = loadImage("kernel.png");
  
  corn = new Kernel[num];
  
  for(int i = 0; i<num; i++){
    corn[i] = new Kernel();
  }
}

void draw(){
  background(0);
  for(int i = 0; i<num; i++){
    corn[i].drawKernel();
    corn[i].floatKernel();
  }
}