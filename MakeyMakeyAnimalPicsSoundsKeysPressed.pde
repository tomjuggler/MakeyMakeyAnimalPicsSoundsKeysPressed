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

void setup() {
  //size(1366, 768);
  size(displayWidth, displayHeight);
  minim = new Minim(this);
  img1 = loadImage("cat1.jpg");  
  img2 = loadImage("dog1.jpg");
  img3 = loadImage("cow1.jpg");  
  img4 = loadImage("duck1.jpg");
  img5 = loadImage("chicken1.jpg");  
  img6 = loadImage("sheep1.jpg");
  img7 = loadImage("1.png");  
  
  image(img7, 0, 0, width, height); //initial image to load
  frame.setTitle("Animal Sounds and Pictures");
}

void draw() {
 
}

void keyPressed () {
  // keyPressed uses the same command as the buttons
  switch (key) {
    case 'a':
      mediaPlayer(img1, "CAT.wav");
      break;
    case 'b':
      mediaPlayer(img2, "DOG.wav");
      break;
    case 'c':
      mediaPlayer(img3, "COW.wav");
      break;
    case 'd':
      mediaPlayer(img4, "DUCK.wav");
      break;
    case 'e':
      mediaPlayer(img5, "CHICKEN.wav");
      break;
    case 'f':
      mediaPlayer(img6, "GOAT.wav");
      break;
    
  }
}  

void mediaPlayer(PImage imgFile, String song){
  image(imgFile, 0, 0, width, height);
    ///play sound here!
    //only works with short sound files else just playing on top of other file. Stop playing before start to sort this out?
    player = minim.loadFile(song);
    player.play();
}


