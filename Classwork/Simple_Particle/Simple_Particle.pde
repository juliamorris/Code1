ArrayList<Particle> particles;

void setup(){
  size(1000,1000);
  
  particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for(int i = 0; i < particles.size(); i++){
    Particle p = particles.get(i);
    p.move();
    p.gravity();
    p.display();
    
    if(p.yPos>height){
      p.bounceY();
    }
    
    if(p.yPos<0){
      particles.remove(i);
    }
    
    if(p.xPos<0 || p.xPos>width){
      p.bounceX();
    }
    
    
  }
}

void mousePressed(){
  particles.add(new Particle());
}