//Anant Prakash
//Assignment 2
//May 28, 2018
//Program written to creade a 'login' page that decrypts username and password present on text file, which then verfies that the entered username and password match the one on file.
// It then gives each user different access priviladges (sorry dont know how to spell), which restricts them to certain pages, unless logged in user is admin.
import javax.swing.JOptionPane;
boolean encode, correctUsername, correctPassword, correctLogin;
String  inputUsername, inputPassword, currentUser;
String [] importedUsernames, importedPasswords;
String[] username = new String [3];
String[] password = new String [3];
int page, loggedInUser;
void setup () {
  inputUsername = null;
  inputPassword = null;
  page = -1;
  smooth();
  importedUsernames =  loadStrings("usernames.txt");
  importedPasswords =  loadStrings("passwords.txt");
  surface.setResizable(true);
  decodeImportedTextFiles();
}

void draw () {
  if (frameCount==1 && page == -1) {
    surface.setVisible(false);
  }
  if (correctLogin == false) {
    login();
  }
  if (page == 0 && correctLogin == true) {
    colorMode(RGB, 255);
    background(0);
    surface.setSize(600, 300);
    textSize(23);
    fill(255);
    text("Welcome to assignment 2, \nto go to each exersise, please use the arrow keys", 30, height/2);
  }
  if (page == 1 && correctLogin == true) {
    page1Draw();
  }
  if (page == 2 && correctLogin == true) {
    page2Setup();
  }
  if (page == 3 && correctLogin == true) {
    page3Draw();
  }
  if (page == 4 && correctLogin == true) {
    page4Draw();
  }

  if (page == 5 && correctLogin ==true) {
    page5Draw();
  }
  if (page ==6 && correctLogin == true) {
    page6Draw();
  }
  if (page == 7 && correctLogin == true) {
    page7Draw();
  }
  if (page==8 && correctLogin == true) {
    page8Draw();
  }
  if (page==9 && correctLogin == true) {
    page9Setup();
    page9Draw();
  }
  if (page== 10 && correctLogin == true) {
    page10Draw();
  }
}

void login () {
//Checkes Username and Passwords and Verifys that the input matches the stored usernames and passwords.
//Assigns a number to loggedInUser, which is used to give each user accsess to differend Pages.
  if (inputUsername == null) {
    inputUsername = JOptionPane.showInputDialog(frame, "username?");
  }
  if (inputUsername.equals(username[0]) || inputUsername.equals(username[1]) || inputUsername.equals(username[2]) && inputUsername != null) { 
    correctUsername = true;
  } else if(inputUsername.equals(username[0]) == false || inputUsername.equals(username[1]) == false || inputUsername.equals(username[2]) == false && inputUsername != null ) {
    correctUsername = false;
    JOptionPane.showMessageDialog(frame, "incorrect username");
    inputUsername = null;
    setup();
  }
  if (correctUsername == true && inputPassword == null) {
    inputPassword = JOptionPane.showInputDialog(frame,"password?");
    if (inputPassword != null) {
      if (inputPassword.equals(password[0]) || inputPassword.equals(password[1]) || inputPassword.equals(password[2]) && correctUsername == true) { 
        correctPassword = true;
      } else if (inputPassword.equals(password[0]) == false || inputPassword.equals(password[1]) == false  || inputPassword.equals(password[2])== false && correctUsername == true){ 
        JOptionPane.showMessageDialog(frame, "incorrect password");
        inputUsername = null;
        inputPassword = null;
        login();
      }
    }
  }
  if (correctUsername == true && correctPassword == true && inputUsername.equals(username[0]) && inputPassword.equals(password[0])) {
    correctLogin = true;
    currentUser  = "Mr Seidel";
  } else if (correctUsername == true && correctPassword == true && inputUsername.equals(username[1]) && inputPassword.equals(password[1])) {
    correctLogin = true;
    currentUser = "Anant";
  } else if (correctUsername == true && correctPassword == true && inputUsername.equals(username[2]) && inputPassword.equals(password[2])) {
    correctLogin = true;
    currentUser = "Ruler of Gotham City";
  } else { 
    JOptionPane.showMessageDialog(frame, "incorrect username / password");
    inputUsername = null;
    inputPassword = null;
    login();
  }
  if (correctLogin == true && inputUsername.equals("anant") || inputUsername.equals("mrseidel")) { 
    JOptionPane.showMessageDialog(frame, "Welcome," + " " + currentUser + "!");
    surface.setVisible(true);
    page = 0;
    if (inputUsername.equals("mrseidel")) {
      loggedInUser= 1;
    } else if (inputUsername.equals("anant")) { 
      loggedInUser=2;
    }
  }

  if (correctLogin == true && inputUsername.equals("batman")) { 
    JOptionPane.showMessageDialog(frame, "Welcome," + " " + currentUser + "!");
    surface.setVisible(true);
    page = 0;
    loggedInUser = 3;
  }
}

void decodeImportedTextFiles () {
  //decrypt usernames and passwords imported from text file.
  username[0]  = decodeInput(importedUsernames[0], true, 2);
  username[1] = decodeInput(importedUsernames[1], true, 7);
  username[2] = decodeInput(importedUsernames[2], true, 4);
  password[0] = decodeInput(importedPasswords[0], true, 12);
  password[1] = decodeInput(importedPasswords[1], true, 18);
  password[2] = decodeInput(importedPasswords[2], true, 23);
}









//This is the part the decodes the imported usernames and passwords.
//I have provided comments for each step and what it does
String decodeInput(String input, boolean changeInShift, int shift) {
  if (changeInShift) {
    int tempShift = shift % 26; //Divide by 26 
    shift = 26 - tempShift; //Creates the shift of chars to decode
  }
  char modifiedLetter; //The modified char for each inital char
  String decoded = "";
  for (int i = 0; i < input.length(); i++) {
    char currentChar = input.charAt(i);
    int tempShift = shift % 26; //Reset tempShift for each loop
    //Using numbers between 97-122 beacuse these are the unicodes for 'a' - 'z' 
    //This is because char uses unicode to identify the letter
    if (int(currentChar) + tempShift > 122) { 
      tempShift -= 122-int(currentChar); //Loop around 
      modifiedLetter = char(96+tempShift); //'a' unicode -1 to adjust for looping around
    } else {
      modifiedLetter = char(currentChar + tempShift);
    }
    decoded = decoded + str(modifiedLetter); //Adds decoded chars to string
  }

  return(decoded);
}
void keyPressed () {
  if (key == CODED) {
    if (keyCode == RIGHT && page >=0 && page < 10 && loggedInUser == 1) {
      page += 1;
    } else if (keyCode == RIGHT && page < 5 && page >= 0 && loggedInUser == 2) {
      page += 1;
      println(page);
    } else if (keyCode == RIGHT && page >= 6 && page < 10 && loggedInUser == 3) {
      page+=1;
      println(page);
    } else if (keyCode == RIGHT && page >= 5 && page < 10 && loggedInUser != 3) {
      JOptionPane.showMessageDialog(frame, "The firewalls of the bat cave deny thy access to these pages");
      page = 0;
      println(page);
    }
    if (keyCode == LEFT && page > 0 && page <=10 && loggedInUser == 1) {
      page -= 1;
    } else if (keyCode == LEFT && page > 0 && page <= 5 && loggedInUser == 2) {
      page -= 1;
      println(page);
    } else if (keyCode == LEFT && page > 6 && page <= 10 && loggedInUser == 3) {
      page -= 1;
      println(page);
    } else if (keyCode == LEFT && page <= 6 && page > 0 && loggedInUser != 2) {
      JOptionPane.showMessageDialog(frame, "Sorry, Alfred says you do not have access to these pages");
      page = 6;
      println(page);
    }
    if(keyCode == RIGHT && page == 0 && loggedInUser ==3) {
     page =6; 
    }
  }
  setupPages();
}
//setups only need to be called once, therefore they will be called using keyPressed.
void setupPages() {
  if (page ==1) {
    page1Setup();
  }
  if (page == 2) {
    page2Settings();
  }
  if (page == 3) {
    page3Setup();
  }
  if (page==4) {
    page4Setup();
  }
  if (page == 5) {
    page5Setup();
  }
  if (page ==6) {
    page6Setup();
  }
  if (page == 7) {
    page7Setup();
  }
  if (page ==8) {
    page8Setup();
  }
  if (page==9) {
    page9Setup();
  }
  if (page==10) {
    page10Setup();
  }
}