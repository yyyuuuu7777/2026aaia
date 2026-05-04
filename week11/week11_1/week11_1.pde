//week11-1 好玩的程式設計 打死地鼠
//修改自week10-2 地鼠冒出來
void setup(){
  size(300,300); //視窗大小
}
int[][]a = {{0,0,0},{0,0,0},{0,0,0}};//2D陣列(Java)
void mousePressed(){//mouse按下去看地鼠有沒有在這一格
  int i = mouseY/100, j = mouseX/100;//左手i對應Y，右手j對應X
  if(a[i][j]>0){//地鼠的頭還在地面上
    a[i][j] = -120;//負的代表死掉了
 }
}  
void draw(){
  background(#67EA5C); //綠色背景
  if(frameCount%60==0){
    int i =int(random(3)), j = int(random(3));//亂數挑i j
    a[i][j] = 60;
  }
  for(int i=0;i<3;i++){ //左手i
    for(int j=0;j<3;j++){ //右手j
      int x = j*100+50, y = i*100+50; //算出座標
      if(a[i][j]<0){//被打死的小地鼠
        fill(255,0,0);//紅色的血
        a[i][j]++;
      }else if(a[i][j]>0){
        fill(#715931,a[i][j]*4);
        a[i][j]--;
      } else fill(#67EA5C);
      ellipse(x,y,80,80); //地鼠的洞
    }
  } 
}
