class Meat {

  PImage uncookedMeat;
  PImage cookedMeat;
  
 PVector meatPosition;  
  
//meat class constructor
Meat(PVector p) {

meatPosition = p;

}

void displayRawMeat(){

  uncookedMeat = loadImage("rawMeatSprite.png");
  uncookedMeat.resize(300,300);
  image(uncookedMeat, meatPosition.x, meatPosition.y);

}


void displayCookedMeat(){

  cookedMeat = loadImage("cookedMeatSprite.png");
  cookedMeat.resize(400, 400);
  image(cookedMeat, 0, 0);
  
}

}
