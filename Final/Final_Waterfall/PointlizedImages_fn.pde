void pointilizedWaterfall(){
  background(200);
  
  loadPixels();
  
  for(int i = 0; i < cols; i++){
    for(int j = 0; j< rows; j++){
      int x = i * pixelSize + pixelSize/2;
      int y = j * pixelSize + pixelSize/2;
      int loc = x + y * width;
      color c = imgWaterfall.pixels[loc];
      
      fill(c);
      noStroke();
      ellipse(i*pixelSize, j*pixelSize, pixelSize, pixelSize);
    }
  } 
}

void pointilizedGreen(int opacity){
  
  loadPixels();
  
  for(int i = 0; i < cols; i++){
    for(int j = 0; j< rows; j++){
      int x = i * pixelSize + pixelSize/2;
      int y = j * pixelSize + pixelSize/2;
      int loc = x + y * width;
      color c = imgGreen.pixels[loc];
      
      fill(c, opacity);
      noStroke();
      ellipse(i*pixelSize, j*pixelSize, pixelSize, pixelSize);
    }
  } 
}

void pointilizedRed(int opacity){
  
  loadPixels();
  
  for(int i = 0; i < cols; i++){
    for(int j = 0; j< rows; j++){
      int x = i * pixelSize + pixelSize/2;
      int y = j * pixelSize + pixelSize/2;
      int loc = x + y * width;
      color c = imgRed.pixels[loc];
       
      fill(c, opacity); 
      
      noStroke();
      ellipse(i*pixelSize, j*pixelSize, pixelSize, pixelSize);
    }
  } 
}

void pointilizedSnow(int opacity){
  
  loadPixels();
  
  for(int i = 0; i < cols; i++){
    for(int j = 0; j< rows; j++){
      int x = i * pixelSize + pixelSize/2;
      int y = j * pixelSize + pixelSize/2;
      int loc = x + y * width;
      color c = imgSnow.pixels[loc];
      
      fill(c, opacity);
      noStroke();
      ellipse(i*pixelSize, j*pixelSize, pixelSize, pixelSize);
    }
  } 
}