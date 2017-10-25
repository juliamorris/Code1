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