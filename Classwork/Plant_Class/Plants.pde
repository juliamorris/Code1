class Plant {
//Declare the qualities that all Plants will have
  float plantHeight;
  int leafs;
  color plantColor;
  float x; //their X location in the garden
  
  
// Contructor
  Plant(float tempX){
    x = tempX;
  }
  
// Custom method for drawing the object
  void display(color tempColor, int tempLeafNum, float tempYHeight){
    plantHeight = tempYHeight;
    fill(tempColor);
    rect(x, plantHeight, 10, 500);
    
    leafs = tempLeafNum; 
    for(int i = 0; i < leafs; i++){
     float ly = plantHeight + 30*i;
     ellipse(x, ly, 50+(i*5), 20);
    }
  }
}

void draw(){
  background(170, 230, 255);
  bob.display(bColor, 5, 250.0);
  kitty.display(kColor, 10, 50.0);
  margaret.display(mColor, 8, 150.0);
  
  fill(50, 250, 90);
  rect(0, 350, 700, 150);
  
}