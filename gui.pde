/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void button1_click1(GButton source, GEvent event) { //_CODE_:boton:643240:
  textarea1.appendText("boton - GButton >> GEvent." + event + " @ " + millis());
  myPort.write(65);
  int inByte = myPort.read();
  println(inByte);
  textfield1.setText(str(inByte));
} //_CODE_:boton:643240:

public void textarea1_change1(GTextArea source, GEvent event) { //_CODE_:textarea1:965589:
  println("textarea1 - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:textarea1:965589:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:slider1:777203:
  println("slider1 - GSlider >> GEvent." + event + " @ " + millis());
  textarea1.appendText(str(slider1.getValueF()));
} //_CODE_:slider1:777203:

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:712193:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
  
} //_CODE_:textfield1:712193:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  boton = new GButton(this, 48, 151, 80, 30);
  boton.setText("Encender");
  boton.addEventHandler(this, "button1_click1");
  textarea1 = new GTextArea(this, 24, 17, 321, 88, G4P.SCROLLBARS_NONE);
  textarea1.setOpaque(true);
  textarea1.addEventHandler(this, "textarea1_change1");
  slider1 = new GSlider(this, 42, 224, 291, 55, 10.0);
  slider1.setShowValue(true);
  slider1.setShowLimits(true);
  slider1.setLimits(0.5, 0.0, 255.0);
  slider1.setShowTicks(true);
  slider1.setNumberFormat(G4P.DECIMAL, 2);
  slider1.setOpaque(false);
  slider1.addEventHandler(this, "slider1_change1");
  textfield1 = new GTextField(this, 157, 152, 120, 30, G4P.SCROLLBARS_NONE);
  textfield1.setOpaque(true);
  textfield1.addEventHandler(this, "textfield1_change1");
}

// Variable declarations 
// autogenerated do not edit
GButton boton; 
GTextArea textarea1; 
GSlider slider1; 
GTextField textfield1; 