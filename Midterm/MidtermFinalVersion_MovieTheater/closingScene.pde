void closingScene(){
  background(200, 100, 150);
  
  textFont(marqueeText);
  fill(255);
  textAlign(CENTER);
  text("Hungry?", width/2, 150);
  textFont(cinemaText);
  image(imgPopcorn, -50, 350, 300, 300);
    text("Click", 100, 575);
  image(imgPopcorn, 150, 350, 300, 300);
    text("to", 300, 575);
  image(imgPopcorn, 350, 350, 300, 300);
    text("pop", 500, 575);
  
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