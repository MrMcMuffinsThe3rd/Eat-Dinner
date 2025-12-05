class Props {
  
  PImage hands;
  PImage table;
  PImage stove;
  PImage topRightPan;
  PImage cookingPan;
  PImage plate;
  PImage thumbsUp;
  PImage bloodyHands;
  
  PVector platePosition = new PVector(0, 0);

//props class constructor
Props() {



  }
  
void displayTable() {
  
 table = loadImage("tableSprite.png");
  image(table, 0, 0);

  }

void displayHands() {

   hands = loadImage("handsSprite.png");
   hands.resize(400, 400);
  image(hands, 0, 0);
  
}

void displayPlate() {

  plate = loadImage("plateSprite.png");
  plate.resize(400,400);
  image(plate,platePosition.x,platePosition.y);
  
  
}

void displayStove() {

  stove = loadImage("stoveSprite.png");
  stove.resize(400, 400);
  image(stove, 0, 0);
  
}


  void displayTopRightPan() {
  
  topRightPan = loadImage("topRightPanSprite.png");
  topRightPan.resize(400, 400);
  image(topRightPan, 0, 0);
  
  }
  
  void displayCookingPan() {
  
  cookingPan = loadImage("cookingPanSprite.png");
  cookingPan.resize(400, 400);
  image(cookingPan, 0, 0);
    
  }
  
  void displayThumbsUp() {
  
     thumbsUp = loadImage("thumbsUp.png");
  thumbsUp.resize(400, 400);
  image(thumbsUp, 0, 0);
  
  }
  
  void displayBloodyHands() {
  
  
  }
  

}
