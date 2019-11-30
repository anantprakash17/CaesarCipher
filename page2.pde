String sentence0, lines, lines2, lines3, lines4, lines5, lines6;
String[] text, text2, text3, text4, text5, text6; 

void page2Settings() {
  surface.setSize(300, 300);
  background(0);
}

void page2Setup() {
  text = loadStrings("macbeth.txt");
  text2 = loadStrings("hamlet.txt");
  text3= loadStrings("illiad.txt");
  text4 = loadStrings("othello.txt");
  text5 = loadStrings("romeoAndJuliet.txt");
  text6 = loadStrings("theOdyssey.txt");
  lines = join(text, " ");
  lines2 = join(text2, " ");
  lines3 = join(text3, " ");
  lines4 = join(text4, " ");
  lines5 = join(text5, " ");
  lines6 = join(text6, " ");
  textSize(20);
  text(" the number of letters is: "+lines4.length()+"\n The number of punctuation marks is: "+ punctuation(lines2)+ "\n number of words = "+words(lines6)+"\n the number of uppercase letters is "+capital(lines3)+"\n the number of lowercase letters is "+Lower(lines3)+"\n the mose occuring letter is "+mostUsed(lines), 0, 100);
}


int punctuation(String x) {
  int punct = 0;
  char[] sentence = x.toCharArray(), punc = {'.', ',', '?', ';', ':'};
  for (int i = 0; i<sentence.length; i++) {
    for (int m = 0; m<punc.length; m++) {
      if (sentence[i] == punc[m] ) {
        punct++;
      }
    }
  }
  return punct;
}

int capital(String x) {
  int capital = 0;
  char sentence[] = x.toCharArray();
  for (int i = 0; i<sentence.length; i++) {
    if (Character.isUpperCase(sentence[i])) {
      capital++;
    }
  }
  return capital;
}

int words(String word) {
  String[] sentence0 = word.split(" ");
  return sentence0.length;
}

int Lower(String x) {
  int Lower = 0;
  char sentence[] = x.toCharArray();
  for (int i = 0; i<sentence.length; i++) {
    if (Character.isLowerCase(sentence[i])) {
      Lower++;
    }
  }
  return Lower;
}
char mostUsed (String sentence) {
  int m =0, count = 0, count2 = 0;
  char [] mostUsed = sentence.toCharArray();
  char y, x;
  for (int i = 1; i<mostUsed.length; i++) {
    x = mostUsed[i];
    for (int j = i+1; j<mostUsed.length; j++) {
      y = mostUsed[j];
      if (x==y) {
        count++;
      }
      if (count>count2) {
        count2 = count;
        count = 0;
      } else if (count<count2) {
        m = i;
      }
    }
  }
  return mostUsed[m];
}
