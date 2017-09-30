
int size;

void setup(){
  size(600, 600);
  size=10;
}


//I found this in a conversation between one of the authors and 
//adapted the elements to mine. The one thing I don't understand
//is the "set" and "get" functions
void draw() {
  int x = frameCount%20*30;
  int c = int(random(2))*30;
  line(x+c,89*6,x+30-c,94*6);
  if (x==95*6) set(0,0,get(0,30,600,x));
}

//I also dont know how to get it to stop moving once the screen
//is filled--this assignment was really difficult!!