// week10_2_arduino_pin2_switch_tone_8_523_784_delay100
void setup() {
  pinMode(2, INPUT_PULLUP); // 拉高變成sv 按下去變0V(GND接地)
  pinMode(8, OUTPUT); // 
}// pin 2 變成按鈕 可以HIGH高(沒按) 可以LOW低(按)

void loop() {
  if(digitalRead(2)==LOW){ // 如果 Pin 2 有按下去
    tone(8, 532, 100); // 發出 523 的 Do
    delay(100);
    tone(8, 784, 100); // 發出 784 的 So
    delay(100);
  }
}