// Luca DalCanto

import java.util.Arrays;

abstract class Song {
  protected int measures;
  protected String name;
  protected float duration;
  protected int sharps;
  protected NumberNote[] allNotes; //final combination of all notes
  protected String[] scale;
  
  protected Song(String keySignature){
    String[] keys = {"C", "G", "D", "A", "E", "B", "F#", "C#", "G#", "D#", "A#", "E#"};
    String[] orderOfNotes = {"A", "B", "C", "D", "E", "F", "G"};
    String[] orderOfSharps = {"F", "C", "G", "D", "A", "E", "B", "F", "C", "G", "D"};
    
    //figure out number of sharps
    sharps = 0;
    while(sharps<12){
      if(keys[sharps] == keySignature){break;}
      sharps++;
    }
    
    //establish scale with just white notes, starting from correct tonic
    scale = new String[7];
    int index = Arrays.binarySearch(orderOfNotes, str(keySignature.charAt(0))); //index of "orderOfNotes" to start on
    for(int i = 0; i < 7; i++){
      scale[i] = orderOfNotes[(i+index)%7];
    }
    
        
    //add sharps
    for(int i = 0; i < sharps; i++){
      String modifyKey = orderOfSharps[i];
      for(int j = 0; j < 7; j++){
        if(str(scale[j].charAt(0)).equals(modifyKey)){
          scale[j] += "#";
          break;
        }
      }
    }
  }
  
  void randomChord(Chord nextChord){
    
  }
  
  void printScale(){
    System.out.println("Number of Sharps: " + sharps);
    for(String note : scale){
      System.out.print(note + " ");
    }
  }
  
  abstract void generate();
  void play(){
    // send allNotes data to Micah
  }
 
  
  
}
