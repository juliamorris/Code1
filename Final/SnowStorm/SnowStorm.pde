ArrayList<Snow> snowing;
PImage imgFlake;
 
void setup() {
  size(600, 600);
  snowing = new ArrayList<Snow>();
  imgFlake = loadImage("flake.png");
}
 
void draw() {
 
  background(0);
  
  flurrySnow();
}

 

void keyReleased() {
  if (key == ENTER) {
     snowing.add(new Snow());
  }
}

class Snow {
  float x; 
  float y; 
  float xspeed;  
  float yspeed; 

Snow() {
    x = random(0, width);
    y = 0;    
    xspeed = random(-2, 2); 
    yspeed = random(1, 3);
  }
void run() {
    x = x + xspeed;
    y = y + yspeed;
  }  

void sideBounce(){
    xspeed = -xspeed;
  }
void drawSnow(){
    image(imgFlake, x, y, 25, 25);
  }
}

void flurrySnow(){
    for (int i=0; i<snowing.size(); i++) {
    Snow s = snowing.get(i); 
    s.run();
    s.drawSnow();
    
    if(s.x<0 || s.x>width){
      s.sideBounce();
    }
    
    if(s.y<0){
      snowing.remove(i);
    }
  }
}