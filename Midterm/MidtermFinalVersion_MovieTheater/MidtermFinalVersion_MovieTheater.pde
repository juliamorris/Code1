int size;

PImage imgAvailable;
PImage imgTaken;
PImage imgSelected;
PImage imgCurtains;
PFont cinemaText;
PFont cinemaTitle;

boolean[] selected = new boolean [45];
boolean clickedOnce = true;
int index = 0;
int[] takenSeats = new int[10];
boolean doDisplay = true ;



void setup(){
  size(600, 600);
  background(255);
  imgAvailable = loadImage("available.jpg");
  imgSelected = loadImage("selected.jpg");
  imgTaken = loadImage("taken.jpg");
  imgCurtains = loadImage("curtains.jpg");
  cinemaText = createFont("CinemaText.ttf", 50);
  cinemaTitle = createFont("CinemaTitle.ttf", 70);
  
  
  
  size = 50;
  
  for(int i = 0; i < 45; i++){
    selected[i] = false;
  }
    
  for(int i = 0; i<10; i++){
    takenSeats[i] = int(random(0, 44));
  }
  
  
}


void draw(){
  
    openingScene();
     if(key == ENTER){
       seatSelection();
     }
}
  
  


void mouseClicked(){
  clickedOnce = true;
}

void seatSelection(){
  background(255);
  textFont(cinemaText);
  
  fill(0);
  rect(100, 550, 400, 25);
  fill(255);
  textSize(20);
  text("Screen", width/2, 570);
  
  
  for (int i = 40; i <=width-40; i +=60){
  for (int j = 100; j <= height-100; j +=90){
    
    if(selected[index]==false){
      image(imgAvailable, i, j, size, size);
    }
    
    if(selected[index]==true){
      image(imgSelected, i, j, size, size);
    }
    
    for(int s = 0; s < 10; s++){
      if(takenSeats[s] == index){
        image(imgTaken, i, j, size, size);
        doDisplay = false ;
      }
    }
    
    if(mousePressed && clickedOnce==true){
      if(mouseX>=i && mouseX<i+size && mouseY>=j && mouseY<j+size){
        selected[index] = !selected[index];
        clickedOnce = false;
      }
    }
    
    if(mouseX>=i && mouseX<i+size && mouseY>=j && mouseY<j+size){
      if(doDisplay == true) {
        if(selected[index]==false){
          fill(0);
          textSize(50);
          text("Seat Available", width/2, 60);
        }
        if(selected[index]==true){
          fill(0);
          textSize(50);
          text("Seat Selected", width/2, 60);
        }
      } 
      if(doDisplay == false){
          fill(0);
          textSize(50);
          text("Seat Taken", width/2, 60);
      }
    }
       
    index++;
    //println(index) ;
    
    if(index==45){
      index=0;
    }
    doDisplay = true ;
  }
  }
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  fill(255, 255, 150);
  noStroke();
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void openingScene(){
    image(imgCurtains, 0, 0, width, height);
  
  textFont(cinemaTitle);
  fill(255);
  textAlign(CENTER);
  text("Welcome to", width/2, 75);
  text("the Cinema", width/2, 150);
  
 
  textFont(cinemaText);
  fill(100, 100, 200);
  textAlign(CENTER);
  text("Press enter", width/2, 480);
  text("to select seats", width/2, 530);
  
  pushMatrix();
    translate(100, 300);
    rotate(frameCount/-10);
    star(0, 0, 21, 51, 5);
   popMatrix();
   
  pushMatrix();
    translate(500, 300);
    rotate(frameCount/-10);
    star(0, 0, 21, 51, 5);
   popMatrix();
}