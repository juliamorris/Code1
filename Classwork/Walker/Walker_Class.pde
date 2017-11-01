class Walker_Class{
   int x, y;
   
   Walker_Class(int x, int y){
     this.x = x;
     this.y = y;
   }
   
   void display(){
     stroke(0);
     rect(x,y, 10, 10);
   }
   
   void step(){
     int choice = int(random(4));
     
     if(choice == 0){
       this.x += 5;
     }else if(choice == 1){
       this.x -=5;
     }else if(choice ==2){
       this.y +=5;
     }else if(choice== 3){
       this.y -=5;
     }
     
     this.x = constrain(this.x, 0, width);
     this.y = constrain(this.y, 0, height);
   }
}