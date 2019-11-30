String sentence, capitalLetter;
float stringLength;
int capitals, vowels, punctuation, words, mostUsed ,mostO , count0, count1;
char x3,y;

void page3Setup() {
  background(255);
  textSize(18);
  fill(0);
  sentence = "Wonderwoman, a character from Marvel, \ndies in Infinity War.";
  surface.setSize(500, 500);
  char [] sentenceChar = sentence.toCharArray();
  for (int i = 0; i < sentenceChar.length; i++) {
    if (Character.isUpperCase(sentenceChar[i])) {
      capitals++;
    }
  }
  for (int i = 0; i< sentenceChar.length; i++) {
    if (sentence.charAt(i) == 'a' || sentence.charAt(i) == 'e' ||sentence.charAt(i) == 'i' ||sentence.charAt(i) == 'o' ||sentence.charAt(i) == 'u' || sentence.charAt(i) == 'A'|| sentence.charAt(i) == 'E' ||sentence.charAt(i) == 'I' ||sentence.charAt(i) == 'O' ||sentence.charAt(i) == 'U' ) {
      vowels++;
    }
  }
  for (int i = 0; i<sentenceChar.length; i++) {
    if (sentence.charAt(i) == ',' || sentence.charAt(i) == '.' ||sentence.charAt(i) == '!' ||sentence.charAt(i) == ':' ||sentence.charAt(i) == ':') {
      punctuation++;
    }
  }
  for (int i = 0; i<sentenceChar.length; i++) {
    if (trim(sentence).charAt(i) == ' ') {
      words++;
    }
  }
  for (int i = 1; i<sentenceChar.length; i++) {
    x3 = sentenceChar[i];
    for (int j = i+1; j<sentenceChar.length; j++) {
      y = sentenceChar[j];
      if (x3 ==y) {
        count0++;
      }
      if (count0>count1) {
        count1 = count0;
        count0 = 0;
      } else if (count0<count1) {
        mostO= i;
      }
    }
  }
}


void page3Draw() {
  
  char [] sentenceChar = sentence.toCharArray();
  stringLength = sentence.length();
  text(sentence, width/6, height/2);
  text("Check Console", width/4, 3*height/4);
  println("Length(in char):" + " " + stringLength);
  println("Capitals:" + " " + capitals);
  println("Vowels:" + " " + vowels);
  println("Punctuation:" + " " + punctuation);
  println("Words:" +  " " + words);
  println("Most Used Letter:" + " " + sentenceChar[mostO]);
}
