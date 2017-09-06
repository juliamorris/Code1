void setup (){
  size(600, 600);
  background(255);
  smooth();
  fill(192);
  noStroke();
 
  //rect(40,40,40,40);
  
  //pushMatrix();
  //translate(40,40);
  //rotate(radians(45));
  //fill(0);
  //rect(40,40,40,40);
  //popMatrix();
  
}

void draw (){
  //if (___) is true, then do what is inside {___}
  if(frameCount % 10 == 0){
    fill(random(0,255), random(0,255), random(0,255));
    pushMatrix();
    translate(100,100);
    rotate(radians(frameCount*4 % 360));
    ellipse(0,0,80,20);
    popMatrix();
  }
}