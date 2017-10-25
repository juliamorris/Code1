int size;

PImage imgAvailable;
PImage imgTaken;
PImage imgSelected;
PImage imgCurtains;
PImage imgPopcorn;
PFont cinemaText;
PFont cinemaTitle;

boolean[] selected = new boolean [45];
boolean clickedOnce = true;
int index = 0;
int[] takenSeats = new int[10];
boolean doDisplay = true ;

ArrayList<Kernel> kernels;
PImage imgKernel;

void setup(){
  size(600, 600);
  background(255);
  imgAvailable = loadImage("available.jpg");
  imgSelected = loadImage("selected.jpg");
  imgTaken = loadImage("taken.jpg");
  imgCurtains = loadImage("curtains.jpg");
  imgPopcorn = loadImage("popcorn.png");
  cinemaText = createFont("CinemaText.ttf", 50);
  cinemaTitle = createFont("CinemaTitle.ttf", 60);
  
  kernels = new ArrayList<Kernel>();
  imgKernel = loadImage("kernel.png");
  
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
    
    if(key == TAB){
         closingScene();
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
  fill(0);
  text("Press tab when finished", 500, 20);
  
  
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
          text("Seat Available", width/2, 70);
        }
        if(selected[index]==true){
          fill(0);
          textSize(50);
          text("Seat Selected", width/2, 70);
        }
      } 
      if(doDisplay == false){
          fill(0);
          textSize(50);
          text("Seat Taken", width/2, 70);
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