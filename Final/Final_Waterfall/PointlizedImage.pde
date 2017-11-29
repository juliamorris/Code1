void pointilizedImage(){
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