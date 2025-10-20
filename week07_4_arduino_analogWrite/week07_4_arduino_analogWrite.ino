//week07_4_arduino_analogWrite
void setup() {
  pinMode(11,OUTPUT); //第11個pin腳(PWE功能,可0-255輸出),要輸出
} //這些特別的腳分別是 第3、第5、第6、第9、第10、第11 共6腳 都可控制它的亮暗程度

int a=0;
void loop() {
  analogWrite(11,a); //亮的程度 是的a值
  a=(a+1) % 256; //會再亮一點點
  delay(10); //每0.01秒
}