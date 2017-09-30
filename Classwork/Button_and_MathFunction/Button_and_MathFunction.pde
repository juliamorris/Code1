int a, b;
float c;
int x, y;
int size;
float dist;
int num1, num2;

boolean buttonClicked;

void setup(){
  size(600, 600);
  x = width/2;
  y = height/2;
  size = 200;
}

void draw(){
  background(0, 0, 50);
  text("Pythag Theorum Calculator", 100, 100);
  fill(255, 255, 240);
  ellipse(x, y, size, size);
  
  if(buttonClicked){
   pythagTheorum(num1, num2);
  }else{
   fill(255, 255, 240);
  }
}


void pythagTheorum(int a, int b){
  c = sqrt((a*a)+(b*b));
  textSize(26);
  fill(150, 10, 130);
  text("A: "+ a + " B: " + b +" C: " + c, 100, height-100);
}




void mousePressed(){
  if(calcDistance(x,y) <= size/2){
    buttonClicked = !buttonClicked;
    num1 = int(random(0, 100));
    num2 = int(random(0, 100));
  }
}
float calcDistance(int xPos, int yPos){
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}