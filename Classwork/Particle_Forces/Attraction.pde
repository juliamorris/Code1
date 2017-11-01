class Attractor{
  PVector position;
  
  float mass; //the weight of the object
  float G; //the constant gravitational force
  
  boolean rollover = false;
  boolean dragging = true;
  
  PVector dragOffset;
  
  Attractor(){
    position = new PVector(width/2, height/2);
    dragOffset = new PVector (0,0);
    mass = 50;
    G = .98;
  }
  
  PVector attract(Mover m){
    PVector force = PVector.sub(position, m.position);
    float d = force.mag();
    
    d = constrain(d, 5.0, 25.0);
    force.normalize();
    
    float strength = (G * mass * m.mass) / (d*d);
    force.mult(strength);
    return force;
  }
  
  
  void display(){
    fill(255);
    
    if(dragging){
      fill(150);
    }else if(rollover){
      fill(200);
    }else{
      fill(255);
    }
    
    ellipse(position.x, position.y, mass, mass);
  }
  
  //check if attractor is being clicked
  void clicked(int mX, int mY){
    float d = dist(mX, mY, position.x, position.y);
    
    if(d < mass){
      dragging = true;
      dragOffset.x = position.x - mX;
      dragOffset.y = position.y - mY;
    }
  }
  
  void hover(int mX, int mY){
    float d = dist(mX, mY, position.x, position.y);
    if(d<mass){
      rollover = true;
    }else{
      rollover = false;
    }
  }
  
  void stopDragging(){
    dragging = false;
  }
  
  void startDragging(){
    if(dragging){
      position.x = mouseX + dragOffset.x;
      position.y = mouseY + dragOffset.y;
    }
  }
}
  