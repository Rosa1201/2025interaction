//week06_4_arduino_slow_jogging
void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT); //8 Buzzer
}

void loop() {
  // put your main code here, to run repeatedly:
  tone(8,780,60); //自己決定聲音 Hz  pin8 780Hz 60ms
  delay(333); //等0.333秒 換下一個音
  tone(8,320,60); //自己決定聲音 Hz  pin8 320Hz 60ms
  delay(333); //等0.333秒 換下一個音
} //每秒會叫3聲 60秒會叫180聲 180 BPM
