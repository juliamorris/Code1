//Extra Credit:
//Add additional balls to our single player pong game over time. 
//The balls should appear at a variable interval of time. 
//HINT: CREATE A CLASS FOR YOUR BALL AND AN ARRAY LIST. 
//ADD A BALL AT A TIME INTERVAL THAT GENERATES RANDOMLY EVERY 
//TIME A NEW BALL IS ADDED


float d = 25; 
int player1Score, player2Score; 
boolean player1MoveUp, player1MoveDown, player2MoveUp, player2MoveDown;  
boolean gameOver = false; 

Paddle player1, player2; 

ArrayList<Ball> balls;

void setup(){
  size(1000, 600); 
  
  balls = new ArrayList<Ball>(); 
  
  textSize(24); 
  player1 = new Paddle(30, 100); 
  player2 = new Paddle(width-30, 100); 
  
  //b.reset(); 
}

void draw(){
  background(0); 
  
  if(frameCount % 500 == 0){
   balls.add(new Ball(width/2, height/2, random(2,4), random(2,4)));
  }
  
  for (int i = 0; i< balls.size(); i++){

      Ball b = balls.get(i); 
  
        if(!gameOver){
          b.displayBall();
          
          fill(255);
          text("player1: " + player1Score, width*.2, height*.10); 
          text("player2: " + player2Score, width*.7, height*.10);  
          
          paddleMovement(); 
          
          b.updateBall(); 
          b.checkCollision(); 
          
          player1.display(); 
          player2.display(); 
        }
        
        checkWinner(); 
  }
}

void keyPressed(){
    if(key == CODED){
      if(keyCode == UP){
        player1MoveUp = true; 
      } else if(keyCode == DOWN){
        player1MoveDown = true; 
      }
    }
    
    if(key == 'w' || key == 'W'){
      player2MoveUp = true; 
    } else if(key == 's' || key == 'S'){
      player2MoveDown = true; 
    }
}

void keyReleased(){
    if(key == CODED){
      if(keyCode == UP){
        player1MoveUp = false; 
      } else if(keyCode == DOWN){
        player1MoveDown = false; 
      }
    }
    
    if(key == 'w' || key == 'W'){
      player2MoveUp = false; 
    } else if(key == 's' || key == 'S'){
      player2MoveDown = false; 
    }
}

void paddleMovement(){
  if(player1MoveDown){
    player1.moveDown(); 
  }
  if(player1MoveUp){
    player1.moveUp(); 
  }
  if(player2MoveDown){
    player2.moveDown(); 
  }
  if(player2MoveUp){
    player2.moveUp(); 
  }
}

void checkWinner(){
  if(player1Score >= 10){
    text("Player 1 Wins!!!", width*.45, height/2); 
    gameOver = true; 
  }
  
  if(player2Score >= 10){
    text("Player 2 Wins!!!", width*.45, height/2); 
    gameOver = true; 
  }
}