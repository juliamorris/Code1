class Flower {
  float x; 
  float xChooser;
  float y; 
  int size = 10;

Flower() {
    xChooser = int(random(1,2.9));
      if (xChooser == 1){
       x = random(0, 200);
       y = random(100, 200);
      }else if( xChooser ==2){
       x = random(400, width);
       y = random (100, 250);
      }   
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