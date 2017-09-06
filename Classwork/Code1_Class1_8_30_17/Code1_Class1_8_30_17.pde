int w;
int h;
float myFloat;
String myString;
void setup(){
  myString = "Hello Console";
  //println(myString);
  w=100;
  h=150;
  size(500, 500);
  background(100,40,50);
}
void draw() {
  //println("Hello Console");
  //println("Hi Back");
  rectMode(CENTER);
  fill(0,0,150);
  rect(250,250,200,200);
  noStroke();
  
  fill(0,0,50);
  ellipse(250,250,w,h);
  //(x coordinate, y coordinate, width, height)
  noStroke();
  
  fill (250,250,250);
  textSize(24);
  text(myString, width/2, height/2);

 
}