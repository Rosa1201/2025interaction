//week07_2_arduino_blink_blink
//修改自week07_01 只是再多一個LED
//有一隻接GND,另隻接13
//有一隻接GND,另隻接12
void setup() {
  pinMode(13,OUTPUT); //把第13隻腳,能送出資料 OUTPUT
  pinMode(12,OUTPUT);
}

void loop() {
  digitalWrite(12,LOW); //暗掉
  digitalWrite(13,HIGH); //發亮
  delay(500);
  digitalWrite(13,LOW); //暗掉
  digitalWrite(12,HIGH); //發亮
  delay(500);
}
