int [][] board; 
boolean [][] clicked; 
int size = 3; 
boolean player1 = true; 

void setup(){
  size(600, 300); 
  textSize(24); 
  
  board = new int[size][size]; 
  clicked = new boolean[size][size]; 
  
  for(int i = 0; i<size; i++){
    for(int j = 0; j<size; j++){
      board[i][j] = 0; 
      clicked[i][j] = false; 
    }
  }
}

void draw(){
  background(255); 
  
  for(int i= 0; i<size; i++){
    for(int j =0; j<size; j++){
      noFill(); 
      rect(300 + i*100, j*100, 100, 100); 
      
      if(board[i][j] == 1){
        ellipse(350 + i*100, j*100 +50, 100, 100);
      }
      
      if(board[i][j] == 2){
        line(300+i*100, j*100,i*100+400, j*100 + 100); 
        line(400+i*100, j*100,i*100+300, j*100 + 100);
      }
    }
  }
  fill(0);
  if(player1){
    text("0's Turn", 10, 100);
  }else{
    text("X's Turn", 10, 100);
  }
}

void mousePressed(){
  for(int i = 0; i< size; i++){
    for(int j = 0; j<size; j++){
      if(clicked[i][j] == false){
        if(mouseX>=300+i*100 && mouseX<=(300 + (i+1)*100) && 
        mouseY>=j*100 && mouseY<=(j+1)*100){
          clicked[i][j] = true;
          if(player1){
            //draws an O
            board[i][j] = 1; 
          }else{
            board[i][j] = 2; 
          }
          player1 = !player1; 
        }
      }
    }
  }
}