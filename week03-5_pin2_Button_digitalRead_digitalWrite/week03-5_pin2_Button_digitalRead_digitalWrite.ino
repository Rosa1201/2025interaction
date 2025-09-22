//week03-5_pin2_Button_digitalRead_digitalWrite
//手動按按鈕 看到燈慢慢變now之後 把now變亮
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP);  //按鈕Button 是2號 沒接下去 就會"拉高"
  for(int i=3;i<=13;i++){  //把pin 3 4 5 ... 13 都設成OUTPUT
    pinMode(i,OUTPUT); //都是可以發光發亮的
  } 
}
int now=3;  //現在發亮的 是pin 3
void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){
    now=now+1;
    if(now>13) now=3;
    for(int i=3;i<=13;i++){
      digitalWrite(i,LOW);  //全部先清空 變成LOW不亮
    }
    digitalWrite(now,HIGH);  //now負責亮
    delay(500);  //休息一下 等0.5 才不會亂運作
  }
}
