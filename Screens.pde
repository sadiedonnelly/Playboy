void drawIntro() {
  image(splashImage, 5, 5);
  fill(0);
  textAlign(LEFT);
  textSize(10);
  text("Artwork by Pat David", width-140, height-15);
  fill(255);
  noStroke();
  rect(width/2-150, height/2-50, 300, 100);
  textAlign(CENTER);
  fill(0);
  textSize(20);
  text("PLAYBOY", width/2, height/2-10);
  textSize(10);
  text("visualization of playboy centerfolds from 1953 to 2016", width/2, height/2+20);
}

void drawHaircolorBreakdown() {
  int blonde;
  int red;
  int black;
  int brown;

  blonde = hairFrequencies.get("Blonde");
  red = hairFrequencies.get("Red");
  black = hairFrequencies.get("Black");
  brown = hairFrequencies.get("Brown");

  fill(0);
  rect(40, 30, blonde, blonde);
  rect(475, 320, red, red);
  rect(594, 315, black, black);
  rect(450, 40, brown, brown);

  fill(255);
  textAlign(CENTER);
  textSize(15);
  text("BLONDE", 219, 196);
  text("BROWN", 567, 180);
  text("RED", 500, 350);
  text("BLACK", 635, 360);
  fill(0);
  text("HAIR COLOR", width/2, 20);
}

void drawPubicHairBreakdown() {
  fill(0);
  ellipse(width/4+30, height/2, pubicHair, pubicHair);
  ellipse((width/4)*3, height/2, noPubicHair, noPubicHair);
  fill(255);
  println(mouseX, mouseY);
  textSize(14);
  text("PUBIC HAIR", 220, 200);
  textSize(10);
  text("NO PUBIC HAIR", 570, 210);
}

void drawRaceBreakdown() {
  int white;
  int asian;
  int black;
  int latina;

  white = raceFrequencies.get("White");
  asian = raceFrequencies.get("Asian");
  black = raceFrequencies.get("Black");
  latina = raceFrequencies.get("Latina");

  fill(0);
  ellipse(width/2, height/2, white/2, white/2);
  ellipse(100, 100, asian/2, asian/2);
  ellipse(100, 200, black/2, black/2);
  ellipse(100, 300, latina/2, latina/2);

  fill(255);
  textSize(14);
  text("WHITE", 380, 200);
  fill(0);
  text("ASIAN", 100, 80);
  text("BLACK", 100, 180);
  text("LATINA", 100, 280);
  fill(0);
  text("RACE", width/2, 20);
}

void drawDeathBreakdown() {
  fill(0);
  ellipse(width/4, height/2, dead/2, dead/2); 
  ellipse(((width/4)*3)-60, height/2, alive/2, alive/2);
  text("DEAD", width/4, (height/2)-30);
  fill(255);
  text("ALIVE", 500, (height/2));
  fill(0);
  text("PLAYMATE STATUS", width/2, 20);
}

