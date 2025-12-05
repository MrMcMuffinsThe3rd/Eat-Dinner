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
Props bloodyHands = new Props();

Text openingText = new Text();
Text badEndText = new Text();
Text goodEndText = new Text();

boolean gameStart = true;
boolean gameBegining = false;
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
//println(badEnding);

println(gameEnds);

 
 //opening instructions
  if (textOn == true && gameStart == true && gameEnds == false){
   table.displayTable();
 plate.displayPlate();
 uncookedMeat.displayRawMeat(300);
 hands.displayHands();
 topRightPan.displayTopRightPan();
 openingText.displayOpeningText();

 }
 
 //display frame one of the game
 if (gameBegining == true) {
 table.displayTable();
 plate.displayPlate();
 uncookedMeat.displayRawMeat(300);
 hands.displayHands();
 topRightPan.displayTopRightPan();

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
  bloodyHands.displayBloodyHands();
 badEndText.displayBadEnd();
 
     
 
 }
 
}



void mousePressed() {
  
  //removes opening text when mouse is clicked, checks if it's false first
  if(gameStart == true){
  
    gameStart = false;
    gameBegining = true;
    textOn = false;
  }

  //checks if topRightPan is pressed and text is off
  else if (mouseX >= 290 && mouseY <= 90 && cookingStage == false 
  && gameBegining == true && gameEnds == false) {
  
    cookingStage = true;
  
  }
  
  
  //checks if meat on pan is pressed and text is off

  else if (mouseX >= 70 && mouseY >= 130 && mouseX <= 280 && mouseY <= 250 
  && textOn == false && cookingStage == true && cookingDone == false && gameEnds == false) {
  
    cookingDone = true;
    cookingStage = false;
  
  }
  
  //checks if cooked meat on pan is pressed, proceedes to Eat Dinner frame
    else if (mouseX >= 70 && mouseY >= 130 && mouseX <= 280 && mouseY <= 250 
  && textOn == false && cookingDone == true && gameEnds == false) {
  
  eatDinnerStage = true;
  cookingDone = false;
  
  }
  
    //checks if cooked meat on plate is pressed, proceeds to good ending
    else if (mouseX >= 130 && mouseY >= 200 && mouseX <= 280 && mouseY <= 300 
  && textOn == false && eatDinnerStage == true && gameEnds == false) {
    
    goodEnding = true;
     gameEnds = true;
  
  
  
  }
  
    //checks if player eats raw meat (bad ending)
  else if (mouseX >= 130 && mouseY >= 200 && mouseX <= 280 && mouseY <= 300 
  && textOn == false && cookingStage == false && gameEnds == false) {
  
    badEnding = true;
     gameEnds = true;
    
  }
  
  else if (gameBegining == true) {
  
  gameEnds = false;
  
      gameStart = true;
    gameBegining = false;
    
    goodEnding = false;
    badEnding = false;
    
    
 cookingStage = false;
 cookingDone = false;
 eatDinnerStage = false;
 
  textOn = true;
  
  }
  
  
}
