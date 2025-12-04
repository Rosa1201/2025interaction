//week11_2_pacman_part1_mouth_m_dm_open_close
//小精靈 張嘴在動
void setup(){
  size(500, 500); //設畫布大小為500 x 500像素
}
int x = 250, y = 250; //小精靈的位置在畫布的中心 (250, 250)
float m = 0, dm = 0.05; //嘴巴大小mouth,嘴巴改變量diff of m
void draw(){
  background(0);  //每次繪製時，將背景設定為黑色 (畫布清空)
  fill(255,255,0); //黃色的
  //ellipse(x, y, 30, 30);
  arc(x, y, 30, 30, +m, PI*2 - m); //弧度
  if (m>=1 || m<0) dm = -dm; //正負倒過來  //當嘴巴開合超過一定角度時，反轉速度 (嘴巴從開~關，或關~開)
  m += dm; //每次更新m的值，使嘴巴逐漸張開或關閉
}
