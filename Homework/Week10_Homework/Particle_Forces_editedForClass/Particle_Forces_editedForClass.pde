// all particles are the same color based off mouse location, but
// i want individual molecules to change



int num = 100;


Mover [] mover = new Mover[num];
Attractor a;


void setup(){
  size(1000, 1000);
  
  for(int i = 0; i < num; i++){
     mover[i] = new Mover(random(.1, 1), random(width), random(height));
  }
  
  a = new Attractor(); 
}

void draw(){
  background(0);
  
  a.display();
  a.startDragging();
  a.hover(mouseX, mouseY);
  
  for(int i = 0; i<num; i++){
    PVector force = a.attract(mover[i]);
    
    mover[i].applyForce(force);
    mover[i].update();
    mover[i].display();
  }
}

void mousePressed(){
  a.clicked(mouseX, mouseY);
}

void mouseReleased(){
  a.stopDragging(); 
}