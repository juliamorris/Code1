ArrayList<Kernel> kernels;
PImage imgKernel;
 
void setup() {
  size(600, 600);
  kernels = new ArrayList<Kernel>();
  imgKernel = loadImage("kernel.png");
}
 
void draw() {
 
  background(255);
  
  flyingPopcorn();
}

 
void mousePressed() {
    kernels.add(new Kernel());
}
 
class Kernel {
  float x; 
  float y; 
  float xspeed;  
  float yspeed; 

Kernel() {
    x = mouseX;
    y = mouseY;    
    xspeed = random(-5, 5); 
    yspeed = random(1, 5);
  }
void run() {
    x = x + xspeed;
    y = y + yspeed;
  }  
void bounce(){
    yspeed = -yspeed;  
  }
void sideBounce(){
    xspeed = -xspeed;
  }
void drawKernel(){
    image(imgKernel, x, y, 50, 50);
  }
}

void flyingPopcorn(){
    for (int i=0; i<kernels.size(); i++) {
    Kernel p = kernels.get(i); 
    p.run();
    p.drawKernel();
 
    if (p.y>height) {
      p.bounce();
    }
    
    if(p.x<0 || p.x>width){
      p.sideBounce();
    }
    
    if(p.y<0){
      kernels.remove(i);
    }
  }
}