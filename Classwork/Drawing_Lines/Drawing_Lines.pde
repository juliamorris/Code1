void setup (){
  size (600, 600);
  background (0);
}

void draw (){
  //line(x point 1, y point 1, x point 2, y point 2)
  
  //background (0);
  
  //fill (0, 10);
  //rect(0, 0, width, height);
  
  
  //stroke (random(0,255), random(0,255), random(0,255));
  stroke (255);
  line (mouseX, mouseY, width/2, height/2);
  
  println(mouseX);
  println(mouseY);
}