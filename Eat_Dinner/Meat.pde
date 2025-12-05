class Meat {

  PImage uncookedMeat;
  PImage cookedMeat;
  
 PVector meatPosition;  
  
//meat class constructor
Meat(PVector p) {

meatPosition = p;

}

void displayRawMeat(int s){

  uncookedMeat = loadImage("rawMeatSprite.png");
  uncookedMeat.resize(s,s);
  image(uncookedMeat, meatPosition.x, meatPosition.y);

}


void displayCookedMeat(int s){

  cookedMeat = loadImage("cookedMeatSprite.png");
  cookedMeat.resize(s, s);
  image(cookedMeat, meatPosition.x, meatPosition.y);
  
}

}
