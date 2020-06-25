/**
 * Load and Display 
 * 
 * Images can be loaded and displayed to the screen at their actual size
 * or any other size. 
 */
 
// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs preload="moonwalk.jpg"; */ 

import ddf.minim.*;

Minim minim;
AudioPlayer player;

PImage img1;  
PImage img2;
PImage img3;  
PImage img4;
PImage img5;  
PImage img6;
PImage img7;
PImage img8;

int counter = 0;

void setup() {
  //size(1366, 768);
  //size(displayWidth, displayHeight);
  size(1280, 1024);
  minim = new Minim(this);
  img1 = loadImage("cat1.jpg");  
  img2 = loadImage("hand.png");
  img3 = loadImage("cow1.jpg");  
  img4 = loadImage("duck1.jpg");
  img5 = loadImage("rooster1.jpg");  
  img6 = loadImage("sheep1.jpg");
  img7 = loadImage("1.jpg");  
  img8 = loadImage("dog1.jpg");  
  
  image(img7, 0, 0, width, height); //initial image to load
  frame.setTitle("Animal Sounds and Pictures");
}

void draw() {
 
}

void keyPressed () {
//Animal Pics Sounds:
 
  // keyPressed uses the same command as the buttons
  switch (key) {
    case 'w':
      mediaPlayer(img1, "CAT.wav");
      break;
    case 'a':
      mediaPlayer(img2, "THUNDER.mp3"); //needs to be hand clap here!
      break;
    case 'g':
      mediaPlayer(img3, "COW.wav");
      break;
    case 'd':
      mediaPlayer(img4, "DUCK.wav");
      break;
    case 'f':
      mediaPlayer(img5, "ROOSTER.mp3");
      break;
    case 's':
      mediaPlayer(img6, "GOAT.wav");
      break;
    case 'e':
      mediaPlayer(img8, "DOG.wav");
      break;
    
  
}

}

void mediaPlayer(PImage imgFile, String song){
  image(imgFile, 0, 0, width, height);
    ///play sound here!
    //only works with short sound files else just playing on top of other file. Stop playing before start to sort this out?
    if(counter > 0)
    {
      player.close(); //to avoid error close before opening again. 
      print("counter is: ");
      println(counter);
      counter++;
    }
    else
    {
      counter++;
      println("counter is: 0");
    }
    player = minim.loadFile(song);
    player.play();
    //player.loop();
    //player.close();
    //minim.stop();
}


