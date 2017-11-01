ArrayList<Walker_Class> walkers = new ArrayList<Walker_Class>();

void setup(){
  size(800, 600);
  background(255);
}

void draw(){
  fill(0);
  
  for(int i = 0; i <walkers.size(); i++){
    Walker_Class w = walkers.get(i);
    w.step();
    w.display();
  }

}

void mousePressed(){
  walkers.add(new Walker_Class(mouseX, mouseY));
}