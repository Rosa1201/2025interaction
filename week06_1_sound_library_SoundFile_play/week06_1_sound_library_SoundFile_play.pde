//week06_1_sound_library_SoundFile_play
//File-Preference字型改大
//Sketch-Library-ManageLibraries,找Sound安裝
//File-Examples-Libraries核心函式庫-Sound-soundfile-SimplePlayback
//這範例有聲音
import processing.sound.*; //使用聲音的外掛模組
SoundFile sound; //宣告SoundFile物件變數
void setup(){
   size(500,400); //視窗大小
   sound=new SoundFile(this,"music.mp3");
   //把music.mp拉到程式裡
   sound.play();
}
void draw(){

}
