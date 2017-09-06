//Pseudo Code: How to draw a house
  //Variables:
      //Long Rectangle (grass)
      //Lg Rectangle (house)
      //Triangle (roof)
      //Sm Rectangle (door)
      //Square 1 (window 1)
      //Square 2 (window 2)
      //Circle (doorknob)
  //Commands:
      //Draw
      
int w;
int h;
int r;
int g;
int b;
// for window colors: r, g, b
float myFloat;
String myString;

void setup() {
  myString = "Welcome Home!";
  w = 500;
  h = 500;
  size(500,500);
  background(150,200,255);
  r = 255;
  g = 255;
  b = 180;
}

void draw() {
  
  fill(50,150,50);
  rect(0,400,500,100);
  noStroke();
  
  fill(165,42,42);
  rect(100,250,300,200);
  noStroke();
  
  fill(165,42,42);
  triangle(250,100,100,250,400,250);
  noStroke();
  
  fill(r,g,b);
  rect(275,350,50,100);
  
  fill(r,g,b);
  rect(150,250,50,50);
  
  fill(r,g,b);
  rect(300,250,50,50);

  fill(0,0,50);
  ellipse(315,400,10,10);
  noStroke();
  
  fill (250,250,250);
  textSize(24);
  text(myString,150,75);
}