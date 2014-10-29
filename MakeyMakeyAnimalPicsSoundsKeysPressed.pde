/**
 * Load and Display 
 * 
 * Images can be loaded and displayed to the screen at their actual size
 * or any other size. 
 */
 
// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs preload="moonwalk.jpg"; */ 

PImage img1;  // Declare variable "a" of type PImage
PImage img2;

void setup() {
  size(640, 360);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  img1 = loadImage("1.png");  // Load the image into the program  
  img2 = loadImage("2.png");
}

void draw() {
 
}

void keyPressed () {
  // keyPressed uses the same command as the buttons
  switch (key) {
    case 'a':
    image(img1, 0, 0, width, height);
    ///play sound here!
    break;
    case 'b':
    image(img2, 0, 0, width, height );
    
  }
}  
