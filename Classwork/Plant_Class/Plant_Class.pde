Plant bob;
Plant kitty;
Plant margaret;

color bColor = color(5, 255, 170);
color kColor = color(20, 25, 150);
color mColor = color(15, 255, 220);
color dColor = color(5, 200, 100);

float randPlace;

void setup(){
  size(700, 500);
  randPlace = random(100, 200);
  //Declare your objects 
  bob = new Plant(randPlace);
  kitty = new Plant(randPlace + 100);
  margaret = new Plant(randPlace + 300);
  
  noStroke();
  ellipseMode(CENTER);
}