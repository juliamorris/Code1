ArrayList<Flower> flowers;
PImage imgFlower;
 
void setup() {
  size(600, 600);
  flowers = new ArrayList<Flower>();
  imgFlower = loadImage("flower.png");
}
 
void draw() { 
  background(0);
  growFlower();
}

 

void keyReleased() {
  if (key == ENTER) {
     flowers.add(new Flower());
  }
}

class Flower {
  float x; 
  float y; 
  int size = 10;

Flower() {
    x = random(0, width);
    y = 500;    
  }
void run() {
    if(size<=40){
      size++;
    }
  }  

void drawFlower(){
    image(imgFlower, x, y, size, size);
  }
}

void growFlower(){
    for (int i=0; i<flowers.size(); i++) {
    Flower f = flowers.get(i); 
    f.run();
    f.drawFlower();
  }
}