Firework[] fs = new Firework[10];
boolean once;

void setup(){
  size(400,400);
  smooth();
  for (int i = 0; i < fs.length; i++){
    fs[i] = new Firework();
  }
}
void draw(){
  noStroke();
  fill(50,0,40,20);
  rect(0,0,width,height);
  for (int i = 0; i < fs.length; i++){
    fs[i].draw();
  }
}
void mouseReleased(){
  once = false;
  for (int i = 0; i < fs.length; i++){
    if((fs[i].hidden)&&(!once)){
      fs[i].launch();
      once = true;
    }
  }
}