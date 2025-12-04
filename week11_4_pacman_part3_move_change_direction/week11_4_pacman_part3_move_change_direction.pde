//week11_4_pacman_part3_move_change_direction
//修改自 week11_3
//小精靈 張嘴在動 而且嘴巴的方向 dir 會轉動
void setup(){
  size(500, 500);
}
int x = 250, y = 250, dx = 0, dy = 0, dir = 0; //direction
float m = 0, dm = 0.05; //嘴巴大小mouth, 嘴巴改變量diff of m
void draw(){
  background(0);
  fill(255,255,0); //黃色的
//計算嘴巴的起始角度，根據移動方向 (dir) 計算
  float m0 = dir * PI/2; //幾個「半PI」 有幾個90度  //將方向轉換為對應弧度 (0:右, 1:下, 2:左, 3:上)
//更新小精靈的位置，根據方向移動
  arc(x, y, 30, 30, m0 + m, m0 + PI*2 - m); //弧度
  x += dx; //改變座標
  y += dy; //改變座標
  //控制嘴巴的開合動畫
  if (m>=1 || m<0) dm = -dm; //正負倒過來  //更新小精靈的位置，根據方向移動
  m += dm;
}
void keyPressed(){
//根據按下的箭頭鍵來改變小精靈的移動方向和嘴巴的朝向
  if (keyCode==LEFT) { dx = -1; dy = 0; dir = 2; } //dir:2 向左 PI  //左移，嘴巴方向設為左 (PI)
  if (keyCode==RIGHT){ dx = +1; dy = 0; dir = 0; } //dir:0 向右 0度  //右移，嘴巴方向設為右 (0度)
  if (keyCode==UP)   { dx = 0; dy = -1; dir = 3; } //dir:3 向上 PI*1.5  //上移，嘴巴方向設為上 (PI*1.5)
  if (keyCode==DOWN) { dx = 0; dy = +1; dir = 1; } //dir:1 向下 PI/2  //下移，嘴巴方向設為下 (PI/2)
}
