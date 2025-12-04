//week11_3_pacman_part2_move_x_y_void_keyPressed
//改自 week11_2
//小精靈 張嘴在動
void setup(){
  size(500, 500);
}
int x = 250, y = 250, dx = 0, dy = 0; //diff of x y  //x,y:小精靈的位置，dx,dy: 變動量 (用來控制移動)
float m = 0, dm = 0.05; //嘴巴大小mouth, 嘴巴改變量diff of m
void draw(){
  background(0);
  fill(255,255,0); //黃色的
  //使用弧形來模擬嘴巴的開合：arc(x, y, width, height, startAngle, stopAngle)
  //x, y: 小精靈的位置，30是弧形的寬高，m控制嘴巴的開合程度
  arc(x, y, 30, 30, +m, PI*2 - m); //弧度
  x += dx; //改變座標
  y += dy; //改變座標
  if (m>=1 || m<0) dm = -dm; //正負倒過來  //當嘴巴開合超過一定角度時，反轉速度 (嘴巴從開~關，或關~開)
  m += dm; //每次更新m的值，使嘴巴逐漸張開或關閉
}
void keyPressed(){ //根據按下的鍵來改變小精靈的移動方向 (使用箭頭鍵)
  if (keyCode==LEFT) { dx = -1; dy = 0; }
  if (keyCode==RIGHT){ dx = +1; dy = 0; }
  if (keyCode==UP)   { dx = 0; dy = -1; }
  if (keyCode==DOWN) { dx = 0; dy = +1; }
}
