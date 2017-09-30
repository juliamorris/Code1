int r, b;
int size;

void setup(){
  size(600, 600);
  size=10;
}

void draw(){
  background(0);
  
  for (int i = 0; i <=600; i +=size){
    for (int j = 0; j <= 600; j +=size){ 
      r = int(map(i, 0, 600, 0, 255));
      b = int(map(j, 0, 600, 0, 255));
      fill(r, 0, b);
      ellipse(i, j, size, size);
  }
    }
}