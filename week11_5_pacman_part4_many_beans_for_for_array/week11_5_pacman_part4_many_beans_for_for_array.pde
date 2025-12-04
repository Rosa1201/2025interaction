//week11_5_pacman_part4_many_beans_for_for_array
//改自 week11_4
//小精靈 張嘴在動 而且嘴巴的方向 dir 會轉動

void setup(){
  size(600, 600); //改一下視窗的大小, 讓它是 30 的倍數  //改視窗大小為 600 x 600 像素，可容納更多豆子，並且大小是 30 的倍數
}
int x = 300-15, y = 300-15, dx = 0, dy = 0, dir = 0; //direction  //x,y:小精靈的位置； dx,dy:移動速度； dir:小精靈的移動方向
float m = 0, dm = 0.05; //嘴巴大小mouth, 嘴巴改變量diff of m  //m:嘴巴開合的角度； dm:嘴巴改變的速度（每次增減的角度）
boolean [][] bean_eaten = new boolean[20][20]; //Java 的二維陣  //二維陣列，用來記錄每顆豆子是否被吃掉（true 表示已吃掉）
void draw(){
  background(0);
  //繪製豆子並檢查小精靈是否吃掉豆子
  for (int i=0; i<20; i++) { //左手i 對應 y座標
    for (int j=0; j<20; j++) { //右手j 對應 x座標
      if ( bean_eaten[i][j]==false ) {
        fill(255); //白色的豆子
        ellipse( 15 + j*30, 15 + i*30, 5, 5);
        //在畫布上畫出豆子
        //檢查小精靈是否碰到豆子，如果碰到則將該豆子標記為已吃掉
        if ( dist(x,y, 15 + j*30, 15 + i*30) < 15 ) bean_eaten[i][j] = true; //標記該豆子為已吃掉
      }
    }
  }
  fill(255,255,0); //黃色的
  float m0 = dir * PI/2; //幾個「半PI」 有幾個90度  //根據移動方向（dir）計算嘴巴的旋轉角度，0:向右， 1:向下， 2:向左， 3:向上
  arc(x, y, 30, 30, m0 + m, m0 + PI*2 - m); //弧度  //畫小精靈的嘴巴，根據方向和開合狀態來控制
  x += dx; //改變座標
  y += dy; //改變座標
  if (m>=1 || m<0) dm = -dm; //正負倒過來
  m += dm;
}
void keyPressed(){
  if (keyCode==LEFT) { dx = -1; dy = 0; dir = 2; } //dir:2 向左 PI
  if (keyCode==RIGHT){ dx = +1; dy = 0; dir = 0; } //dir:0 向右 0度
  if (keyCode==UP)   { dx = 0; dy = -1; dir = 3; } //dir:3 向上 PI*1.5
  if (keyCode==DOWN) { dx = 0; dy = +1; dir = 1; } //dir:1 向下 PI/2
}
