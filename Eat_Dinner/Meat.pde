class Meat {

  PImage uncookedMeat;
  PImage cookedMeat;
  
 PVector rawMeatPosition = new PVector(200, 350);
  
  
  
//meat class constructor
Meat() {


}

void displayRawMeat(){

  
  scale(0.5);
  uncookedMeat = loadImage("rawMeatSprite.png");
  image(uncookedMeat, rawMeatPosition.x,rawMeatPosition.y);

}


void displayCookedMeat(){


}

}
