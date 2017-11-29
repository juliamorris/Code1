String [] rows;
int index = 0;

void setup(){
  size(600,600);
  background(0);
  rows = loadStrings("shapePoints.txt");
}

void draw(){
 fill(0, 0, 255);
 
 if(index< rows.length){
   String[] pieces = split(rows[index], "\t");
   
   if(pieces.length ==2){
     int x = int(pieces[0]);
     int y = int(pieces[1]);
     ellipse(x,y,10,10);
   }
   
   index ++;
 }
  
  
}