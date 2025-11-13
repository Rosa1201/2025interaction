// week10_5_arduino_serial_joystick_to_processing
// 改自 week10_4
// 但是不使用 Serial.println() 要改用 serial.write()
void setup() {
  Serial.begin(9600); 
  pinMode(2, INPUT_PULLUP);
  pinMode(8, OUTPUT); 
}

void loop() { 
  delay(30); // 改成慢一點 才不會太粗糙 1000 Hz / Processing每秒60次
  int now = analogRead(A3) / 4; // 小心 要除以4才能順利由 Serial.write()送出 
  Serial.write(now); // 把 0 ~ 255 的數值送出去
  if(now > 200) tone(8, 784, 100); 
  if( now < 50) tone(8, 532, 100);
}
