//week11_6_pacman_part5_wall_turning_point
//改自 week11_5
//小精靈張嘴在動 而且嘴巴的方向 dir 會轉動
void setup(){
  size(600, 600); //改一下視窗的大小, 讓它是 30 的倍數
}
int x = 300-15, y = 300-15, dx = 0, dy = 0, dir = 0;  //direction  //x,y:小精靈的位置， dx,dy:移動速度， dir:小精靈的移動方向
float m = 0, dm = 0.05; //嘴巴大小mouth, 嘴巴改變量diff of m  //m:嘴巴的開合角度， dm:嘴巴改變的速度 (每次增減的角度)
boolean [][] bean_eaten = new boolean[20][20]; //Java 的二維陣  //二維陣列，用來記錄每顆豆子是否被吃掉
void draw(){
  background(0);
  for (int i=0; i<20; i++) { //左手i 對應 y座標
    for (int j=0; j<20; j++) { //右手j 對應 x座標
      if ( bean_eaten[i][j]==false ) {
        fill(255); //白色的豆子
        ellipse( 15 + j*30, 15 + i*30, 5, 5);  //在畫布上畫出豆子
        //檢查小精靈是否碰到豆子，如果碰到則將該豆子標記為已吃掉
        if ( dist(x,y, 15 + j*30, 15 + i*30) < 15 ) bean_eaten[i][j] = true; //標記該豆子為已吃掉
      }
    }
  }
  fill(255,255,0); //黃色的
  float m0 = dir * PI/2; //幾個「半PI」 有幾個90度  //根據移動方向（dir）計算嘴巴的旋轉角度，0:向右， 1:向下， 2:向左， 3:向上
  arc(x, y, 30, 30, m0 + m, m0 + PI*2 - m); //弧度
  if (x+dx >= 15 && x+dx <= 600-15) x += dx; //改變座標 (不超過四週的牆)
  if (y+dy >= 15 && y+dy <= 600-15) y += dy; 
  //豆子、轉折點 座標 (15 + j*30, 15 + i*30)
  if ( (x-15)%30 == 0 && (y-15)%30 == 0 ) {
    if (next==2) { dx = -1; dy = 0; dir = 2; } //dir:2 向左 PI
    if (next==0) { dx = +1; dy = 0; dir = 0; } //dir:0 向右 0度
    if (next==3) { dx = 0; dy = -1; dir = 3; } //dir:3 向上 PI*1.5
    if (next==1) { dx = 0; dy = +1; dir = 1; } //dir:1 向下 PI/2
    next = -1; //沒有要轉動哦!
  }
  //控制嘴巴開合的速度和反向
  if (m>=1 || m<0) dm = -dm; //正負倒過來
  m += dm;
}
int next = -1; //一開始沒有要轉動
 //當按方向鍵時，更新 `next`變數記錄下一個移動方向
void keyPressed() { //按下方向鍵,會決定下一步 next 要怎麼做
  if (keyCode==LEFT) next = 2;
  if (keyCode==RIGHT)next = 0;
  if (keyCode==UP)   next = 3;
  if (keyCode==DOWN) next = 1;
}
