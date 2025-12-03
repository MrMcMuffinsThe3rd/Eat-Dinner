class Meat {

  PImage uncookedMeat;
  PImage cookedMeat;
  
 PVector rawMeatPosition = new PVector(45, 130);
  
  
  
//meat class constructor
Meat() {


}

void displayRawMeat(){

  uncookedMeat = loadImage("rawMeatSprite.png");
  uncookedMeat.resize(300,300);
  image(uncookedMeat, rawMeatPosition.x,rawMeatPosition.y);

}


void displayCookedMeat(){


}

}
