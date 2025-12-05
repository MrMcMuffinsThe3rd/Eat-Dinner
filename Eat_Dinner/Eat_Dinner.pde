Meat uncookedMeat;
Meat cookingUncookedMeat;
Meat cookedMeat;
Meat servedCookedMeat;


Props hands = new Props();
Props table = new Props();
Props plate = new Props();
Props stove = new Props();
Props topRightPan = new Props();
Props cookingPan = new Props();
Props thumbsUp = new Props();

Text openingText = new Text();
Text badEndText = new Text();
Text goodEndText = new Text();

boolean gameBegining = true;
boolean cookingStage = false;
boolean cookingDone = false;
boolean eatDinnerStage = false;

boolean goodEnding = false;
boolean badEnding = false;

boolean gameEnds = false;

boolean textOn = true;


void setup() {

  size(400, 400);
 uncookedMeat = new Meat(new PVector(45, 130));
 cookingUncookedMeat = new Meat(new PVector(0, 0));
 cookedMeat = new Meat(new PVector(-90, -220));
 servedCookedMeat =  new Meat(new PVector(0,0));

}

void draw() {
//background(0);
 
 //tests
 //println(cookingDone);
 //println(cookingStage);
println(badEnding);
 
 //display frame one of the game
 if (gameBegining == true) {
 table.displayTable();
 plate.displayPlate();
 uncookedMeat.displayRawMeat(300);
 hands.displayHands();
 topRightPan.displayTopRightPan();
 
 if (textOn == true && gameBegining == true){
 openingText.displayOpeningText();
 }
 }
 
 //display frame two (cooking)
 if (cookingStage == true) {
 table.displayTable();
 stove.displayStove();
 cookingPan.displayCookingPan();
 cookingUncookedMeat.displayRawMeat(400);

 
 }
 
 //display frame three (cooked)
 if (cookingDone == true) {
 table.displayTable();
 stove.displayStove();
 cookingPan.displayCookingPan();
 cookedMeat.displayCookedMeat(600);
   
 }
 
 
 //display frame four (Eat Dinner)
 if (eatDinnerStage == true) {
 table.displayTable();
 plate.displayPlate();
  hands.displayHands();
  servedCookedMeat.displayCookedMeat(400);
 
 }
 
 //display good ending frame
 if (goodEnding == true) {
 
    background(255);
 thumbsUp.displayThumbsUp();
 goodEndText.displayGoodEnd();
   
 }
 
 //display bad ending frame
 if (badEnding == true) {
  background(0);
 
 }
 
}


void displayGoodEnding() {

  background(255);

}

void displayBadEnding() {

  
}


void mousePressed() {
  
  //removes opening text when mouse is clicked
  textOn = false;

  //checks if topRightPan is pressed and text is off
  if (mouseX >= 290 && mouseY <= 90 && textOn == false && cookingStage == false) {
  
    cookingStage = true;
  
  }
  
  
  //checks if meat on pan is pressed and text is off

  else if (mouseX >= 70 && mouseY >= 130 && mouseX <= 280 && mouseY <= 250 
  && textOn == false && cookingDone == false) {
  
    cookingDone = true;
    cookingStage = false;
  
  }
  
  //checks if cooked meat is pressed, proceedes to Eat Dinner frame
    else if (mouseX >= 70 && mouseY >= 130 && mouseX <= 280 && mouseY <= 250 
  && textOn == false && cookingDone == true) {
  
  eatDinnerStage = true;
  cookingDone = false;
  
  }
  
    //checks if cooked meat on plate is pressed and text is off 
    else if (mouseX >= 130 && mouseY >= 200 && mouseX <= 280 && mouseY <= 300 
  && textOn == false && eatDinnerStage == true) {
    
    goodEnding = true;
    gameEnds = true;
    gameBegining = false;
    eatDinnerStage = false;
  
  }
  
    //checks if player eats raw meat (bad ending)
  else if (mouseX >= 130 && mouseY >= 200 && mouseX <= 280 && mouseY <= 300 
  && textOn == false && gameBegining == true) {
  
    badEnding = true;
    gameEnds = true;
     gameBegining = false;
    
  
  }
  
  //restarts the game
  else if (gameEnds == true) {
  
    gameBegining = true;
    gameEnds = false;
    goodEnding = false;
    badEnding = false;
    eatDinnerStage = false;
    cookingStage = false;
    cookingDone = false;
  
  }
  
}
