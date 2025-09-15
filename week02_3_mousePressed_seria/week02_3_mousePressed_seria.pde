//week02-3_mousePressed_seria
import processing.serial.*;//第1行 使用USB的serial
Serial myPort;  //第2行 宣告USB的Serial變數myPort
void mousePressed(){
  myPort.write(' ');  //第4行 mouse按下時 就送出' '出去
}

void setup(){
  size(400,400);
  myPort = new Serial(this, "COM5",9600);  //第3行準備好
}  //剛剛你在Arduino裡設定COM多少 就多少
void draw(){
  if(mousePressed) background(#FF0000);
  else background(#00FF00); 
}
