class Props {
  
  PImage hands;
  PImage table;
  PImage stove;
  PImage pan;
  PImage plate;
  
  PVector platePosition = new PVector(200, 350);

//props class constructor
Props() {



  }
  
void displayTable() {
  
 table = loadImage("tableSprite.png");
  image(table, 0, 0);

  }

void displayHands() {

  
}

void displayPlate() {

  plate = loadImage("plateSprite.png");
  image(plate, platePosition.x, platePosition.y);
  
}

void displayStove() {

  
  
}


  void displayPan() {
  
  
  
  }
  

}
