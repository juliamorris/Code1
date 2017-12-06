class Ball {
  
  float ballX, ballY;
  float speedX, speedY; 
  
  Ball(float _ballX, float _ballY, float _speedX, float _speedY){
   ballX = _ballX;
   ballY = _ballY;
   speedX = _speedX;
   speedY = _speedY;
  }
    
void displayBall(){
    fill(0, 255, 0); 
    ellipse(ballX, ballY, d, d); 
  }
  
void updateBall(){
    ballX += speedX; 
    ballY += speedY; 
  }

void reset(){
    ballX = width/2; 
    ballY = height/2; 
  
    speedX = random(2, 4); 
    speedY = random(2, 4); 
  }

void checkCollision(){
  if(ballX >= width-d/2){
    player1Score += 1; 
    reset();
  }
  
  if(ballX <= d/2){
    player2Score += 1; 
    reset();
  }
  
  if(ballY >= height-d/2 || ballY <= d/2){
    speedY *= -1.1; 
  }
  
  if(ballX >= player2.xPos - d/2 && ballY>= (player2.yPos-player2.rectSize/2) && 
    ballY<= (player2.yPos+player2.rectSize/2)){
    speedX *= -1.1; 
    speedY *= 1.1; 
  }
  
  if(ballX<= player1.xPos + d/2 && ballY>= (player1.yPos-player1.rectSize/2) && 
    ballY<= (player1.yPos+player2.rectSize/2)){
      speedX *= -1.1; 
      speedY *= 1.1; 
  }
}
  
  
  
  
  
  
  
  
  
}