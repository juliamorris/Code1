int x, y;

void setup (){
  size(800, 500);
  background(0, 0, 40);
  x = 100;
  y = 200;
}

void draw (){
  
//Snowflakes

  fill(0, 10); 
  rect(0, 0, width, height-45); 
  stroke(255);
  
  stroke(255);
  line(50, 10, 50, 30);
  line(40, 20, 60, 20);
  line(45, 15, 55, 25);
  line(45, 25, 55, 15);
  
  pushMatrix();
  translate(random(-20, 750), random(-10, 300));
  stroke(255);
  line(50, 10, 50, 30);
  line(40, 20, 60, 20);
  line(45, 15, 55, 25);
  line(45, 25, 55, 15);
  popMatrix();
  
  pushMatrix();
  translate(random(-20, 750), random(-10, 300));
  stroke(255);
  line(50, 10, 50, 30);
  line(40, 20, 60, 20);
  line(45, 15, 55, 25);
  line(45, 25, 55, 15);
  popMatrix();
  
  
//Snow at bottom  
  
  pushMatrix();
  translate(random(-60, 750), random(350, 500));
  stroke(255);
  line(50, 10, 50, 30);
  line(40, 20, 60, 20);
  line(45, 15, 55, 25);
  line(45, 25, 55, 15);
  popMatrix();

//Trees
 
  fill(0, 40, 10);
  noStroke();
  triangle (x, y, x-50, y+50, x+50, y+50);
  triangle (x, y+30, x-70, y+90, x+70, y+90);
  triangle (x, y+60, x-90, y+140, x+90, y+140);
  triangle (x, y+90, x-110, y+190, x+110, y+190);
  triangle (x, y+120, x-130, y+250, x+130, y+250);
  fill(40, 20, 0);
  rect(x-15, y+250, 30, 40);

  pushMatrix();
  translate(200, -10);
  fill(0, 50, 30);
  noStroke();
  triangle (x, y, x-50, y+50, x+50, y+50);
  triangle (x, y+30, x-70, y+90, x+70, y+90);
  triangle (x, y+60, x-90, y+140, x+90, y+140);
  triangle (x, y+90, x-110, y+190, x+110, y+190);
  triangle (x, y+120, x-130, y+250, x+130, y+250);
  fill(40, 20, 0);
  rect(x-15, y+250, 30, 40);
  popMatrix(); 
  
  pushMatrix();
  translate(320, 25);
  fill(0, 30, 5);
  noStroke();
  triangle (x, y, x-50, y+50, x+50, y+50);
  triangle (x, y+30, x-70, y+90, x+70, y+90);
  triangle (x, y+60, x-90, y+140, x+90, y+140);
  triangle (x, y+90, x-110, y+190, x+110, y+190);
  triangle (x, y+120, x-130, y+250, x+130, y+250);
  fill(40, 20, 0);
  rect(x-15, y+250, 30, 40);
  popMatrix(); 
  
  pushMatrix();
  translate(100, 20);
  fill(0, 60, 20);
  noStroke();
  triangle (x, y, x-50, y+50, x+50, y+50);
  triangle (x, y+30, x-70, y+90, x+70, y+90);
  triangle (x, y+60, x-90, y+140, x+90, y+140);
  triangle (x, y+90, x-110, y+190, x+110, y+190);
  triangle (x, y+120, x-130, y+250, x+130, y+250);
  fill(40, 20, 0);
  rect(x-15, y+250, 30, 40);
  popMatrix();
  
  pushMatrix();
  translate(400, -5);
  fill(0, 40, 10);
  noStroke();
  triangle (x, y, x-50, y+50, x+50, y+50);
  triangle (x, y+30, x-70, y+90, x+70, y+90);
  triangle (x, y+60, x-90, y+140, x+90, y+140);
  triangle (x, y+90, x-110, y+190, x+110, y+190);
  triangle (x, y+120, x-130, y+250, x+130, y+250);
  fill(40, 20, 0);
  rect(x-15, y+250, 30, 40);
  popMatrix();
  
  pushMatrix();
  translate(650, -15);
  fill(0, 50, 30);
  noStroke();
  triangle (x, y, x-50, y+50, x+50, y+50);
  triangle (x, y+30, x-70, y+90, x+70, y+90);
  triangle (x, y+60, x-90, y+140, x+90, y+140);
  triangle (x, y+90, x-110, y+190, x+110, y+190);
  triangle (x, y+120, x-130, y+250, x+130, y+250);
  fill(40, 20, 0);
  rect(x-15, y+250, 30, 40);
  popMatrix(); 
  
  pushMatrix();
  translate(500, 10);
  fill(0, 60, 20);
  noStroke();
  triangle (x, y, x-50, y+50, x+50, y+50);
  triangle (x, y+30, x-70, y+90, x+70, y+90);
  triangle (x, y+60, x-90, y+140, x+90, y+140);
  triangle (x, y+90, x-110, y+190, x+110, y+190);
  triangle (x, y+120, x-130, y+250, x+130, y+250);
  fill(40, 20, 0);
  rect(x-15, y+250, 30, 40);
  popMatrix();
  
}