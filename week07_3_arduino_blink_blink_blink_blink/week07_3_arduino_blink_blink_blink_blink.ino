//week07_3_arduino_blink_blink_blink_blink
//修改自week07_02 只是再多2個LED
//用麵包板,每5個洞是一版,所以用GND接
//有一隻接GND,另隻接13
//有一隻接GND,另隻接12
//有一隻接GND,另隻接11
//有一隻接GND,另隻接10
void setup() {
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT); //把第13隻腳,能送出資料 OUTPUT
}

void loop() {
  for(int i=10;i<=13;i++){
    digitalWrite(13,LOW); //暗掉
    digitalWrite(i-1,LOW); //暗掉
    digitalWrite(i,HIGH); //發亮
    delay(500);
  }
}
