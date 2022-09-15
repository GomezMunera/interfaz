// Need G4P library
import g4p_controls.*;
// You can remove the PeasyCam import if you are not using
// the GViewPeasyCam control or the PeasyCam library.


import processing.serial.*;

// The serial port:
Serial myPort;

public void setup(){
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
   // List all the available serial ports:
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[0], 9600);
  
}

public void draw(){
  background(230);
  while (myPort.available() > 0) {
    int inByte = myPort.read();
    println(inByte);
  }
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
