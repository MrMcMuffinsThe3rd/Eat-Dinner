class Text {

  
  PImage openingText;
  PImage badEnd;
  PImage goodEnd;

void displayOpeningText() {

 openingText = loadImage("text-1.png");
  openingText.resize(400, 400);
  image(openingText, 0, 0);
  
}

void displayBadEnd() {


}

void displayGoodEnd() {

  goodEnd = loadImage("text-2.png");
  goodEnd.resize(400, 400);
  image(goodEnd, 0, 0);

}



}
