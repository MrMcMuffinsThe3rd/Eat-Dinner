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

boolean goodEnding = false;
boolean badEnding = false;


void setup() {

  size(400, 400);
 

}

void draw() {
background(0);
 
 if (gameBegining) {
 table.displayTable();
 plate.displayPlate();
 uncookedMeat.displayRawMeat();
 hands.displayHands();
 topRightPan.displayTopRightPan();
 openingText.displayOpeningText();
 }
 
 
}


void displayGoodEnding() {


}

void displayBadEnding() {

  
}


void mousePressed() {


}
