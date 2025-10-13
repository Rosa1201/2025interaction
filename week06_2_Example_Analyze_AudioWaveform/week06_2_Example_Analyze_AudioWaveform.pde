//week06_2_Example_Analyze_AudioWaveform
import processing.sound.*;

SoundFile sample; //宣告SoundFile變數物件
Waveform waveform; //宣告Waveform變數物件
int samples = 100; //一次讀入多少 sample:100個sample

public void setup() {
  size(640, 360);
  //background(255); //可註解掉

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "beat.aiff"); //讀入音樂檔
  sample.loop(); //循環播放vs.之前.play()是只撥放一次

  waveform = new Waveform(this, samples); //想用100格 來分析音樂
  waveform.input(sample); //用剛剛的音樂檔 進行分析
}

public void draw() {
  // Set background color, noFill and stroke style
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  waveform.analyze(); //進行波形分析
  
  beginShape();
  for(int i = 0; i < samples; i++){ //把這100格 的座標都算出來
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width), //x座標 對應0...100的值 拉長到視窗的長度640
      map(waveform.data[i], -1, 1, 0, height) //y座標 就是waveform.data[i]的值
    );
  }
  endShape();
}
