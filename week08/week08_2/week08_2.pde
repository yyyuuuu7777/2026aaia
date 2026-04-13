//week08-2 黑白棋 互動下棋
void setup(){
  size(620, 620);
}
int [][]board = new int[10][10];
void mousePressed(){
  int i = (mouseY-10)/60, j = (mouseX-10)/60;
  if (mouseButton==LEFT) board[i][j] = 1;//黑棋
  if (mouseButton==RIGHT) board[i][j] = 2;//白棋
  if (mouseButton==CENTER) board[i][j] = 0;//清空
  }
void draw(){
  background(#E8BF73);
  for(int i=0; i<10; i++){
    for (int j=0; j<10; j++){
      int x = 10 +j * 60, y = 10 + i * 60;
      fill(#E8BF73);
      strokeWeight(2);
      rect(x, y, 60, 60);
      if(board[i][j] == 1) fill(0);
      if(board[i][j] == 2) fill(255);
      if(board[i][j] != 0)  ellipse(30+x, 30+y, 50, 50);
    }
  }
}
