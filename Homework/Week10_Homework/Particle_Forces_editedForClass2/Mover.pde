class Mover{
  //PVector holds two pieces of data (like both x and y)
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  float mass;
  
  //constructor is like setup -- setting up the paramaters that will be part of the main sketch
  //what makes a "mover" a "mover"
  Mover(float m, float x, float y){
    mass = m;
    position = new PVector(x, y);
    velocity = new PVector(1, 0);
    acceleration = new PVector(0,0);
  }
  
  //methods, what the "mover" does
  void applyForce(PVector force){
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }
  
  void display(float r, float g){
    fill(r, g, 125);
    ellipse(position.x, position.y, mass*25, mass*25);
  }
}
  
 