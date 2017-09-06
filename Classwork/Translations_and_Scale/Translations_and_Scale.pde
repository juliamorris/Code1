int x, y;

void setup (){
  size(500, 500);
  
  background(0);
  
  x = 200;
  y = 200;
}

void draw (){
  
//use translate or scale before to move/scale entire sketch
  translate(-50, -50);
  
  triangle (x+15, y, x, y+15, x+30, y+15);
  rect(x, y+15, 30, 30);
  rect(x+12, y+30, 10, 15);
  
// use push and pop matrix to isolate item to move on sketch
  pushMatrix();
  translate(-700, -900);
  scale(5.0);
  triangle (x+15, y, x, y+15, x+30, y+15);
  rect(x, y+15, 30, 30);
  rect(x+12, y+30, 10, 15);
  popMatrix();

}