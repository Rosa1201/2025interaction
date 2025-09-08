//week01-2_keyPressed_textSize_text_key
void setup(){
  size(500,500);
}
void draw(){  //鍵盤互動
  if(keyPressed){  //先關掉注音
    background(#FF0000);  //紅背景
    textSize(80);  //大的字型
    text(""+key,100,100);
  }
}
