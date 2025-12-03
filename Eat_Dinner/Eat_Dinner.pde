Meat uncookedMeat = new Meat();
Meat cookedMeat = new Meat();
Props hands = new Props();
Props table = new Props();
Props plate = new Props();
Props stove = new Props();
Props topRightPan = new Props();
Props cookingPan = new Props();

Text openingText = new Text();
Text badEndText = new Text();
Text goodEndText = new Text();

boolean gameBegining = true;
boolean cookingStage = false;
boolean cookingDone = false;
boolean eatDinnerStage = false;

boolean goodEnding = false;
boolean badEnding = false;

boolean textOn = true;


void setup() {

  size(400, 400);
 

}

void draw() {
background(0);
 
 //display frame one of the game
 if (gameBegining) {
 table.displayTable();
 plate.displayPlate();
 uncookedMeat.displayRawMeat();
 hands.displayHands();
 topRightPan.displayTopRightPan();
 
 if (textOn == true){
 openingText.displayOpeningText();
 }
 }
 
 //display frame two (cooking)
 if (cookingStage == true) {
 
 
 
 }
 
 //display frame three (cooked)
 if (cookingDone == true) {
 
 
 }
 
 
 //display frame four (Eat Dinner)
 if (eatDinnerStage == true) {
 
 
 
 }
 
 //display good ending frame
 if (goodEnding == true) {
 
 
 }
 
 //display bad ending frame
 if (badEnding == true) {
 
 
 }
 
}


void displayGoodEnding() {


}

void displayBadEnding() {

  
}


void mousePressed() {
  
  //removes opening text when mouse is clicked
  textOn = false;

  //checks if topRightPan is pressed and text is off
  //if (mouseX >= ) {
  
  
  //}
  
  //checks if meat on plate is pressed and text is off
  
  
  
  //checks if meat on pan is pressed and text is off

}
