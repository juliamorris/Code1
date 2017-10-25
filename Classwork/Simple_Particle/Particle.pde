class Particle{
  float xPos, yPos;
  float xSpeed, ySpeed;
  float size;
  int c;
  int r, g, b;
  
  Particle(){
    xPos = mouseX;
    yPos = mouseY;
    
    xSpeed = random(-5,5);
    ySpeed = random(1, 5);
  }
  
  void move(){
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
  }
  
  void gravity(){
    ySpeed += 0.09;
  }
  
  void bounceY(){
    ySpeed = -ySpeed;
  }
  
  void bounceX(){
    xSpeed = -xSpeed;
  }
  
  
  void display(){
    c = int((abs(xSpeed)) + (abs(ySpeed)))*10 + 30;
    r = 250 - c;
    g = c;
    b = c + 40;
    
    if(abs(xSpeed)> abs(ySpeed)){
      size = abs(xSpeed)*5 +5;
    }else{
      size = abs(ySpeed)*5 +5;
    }
    
    fill(r, g, b);
    noStroke();
    ellipse(xPos, yPos, size, size);
  }
}