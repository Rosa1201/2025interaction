//week12-4_dino_jump_many_boards
//修改自week12-3
//恐龍跳跳 (1)板子 (2)卡在板子上
PImage img;
void setup(){
  size(300,500);
  img=loadImage("dino.png");
}
float []boardX={50,200,100,200};//float boardX=200,boardY=400;
float []boardY={100,200,300,400};
float x=200,y=400,dx=0,dy=0;
boolean flying=false;//一開始 沒有飛行
void draw(){
  background(255);
  boolean flying=true;
  for(int i=0;i<4;i++){
    rect(boardX[i],boardY[i],100,5);
    if(y+100<=boardY[i] && y+dy+100>=boardY[i] && boardX[i]<=x+100 && x<=boardX[i]+100){
    y=boardY[i]-100;
    dy=0;
    flying=false;//卡在板子上 就不是飛行
    } 
  //image(img,mouseX,mouseY,100,100)
  }
  if(flying){//如果有在飛
     y+=dy;
     if(y<400)dy+=0.98;
     else{
       dy=0;
       flying=false;
     }
  }
  image(img,x,y,100,100);
  x+=dx;
}
void keyPressed(){
  if(keyCode==UP) dy=-15;
  if(keyCode==LEFT) dx=-1;//往左
  if(keyCode==RIGHT) dx=+1;//往右
}
void keyReleased(){
  if(keyCode==LEFT || keyCode==RIGHT) dx=0;//放開就不要再左右移動了
}
