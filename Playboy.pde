//GIcentre

Table table;

int tableLength;

HashMap<String, Integer> raceFrequencies = new HashMap<String, Integer>();
HashMap<String, Integer> hairFrequencies = new HashMap<String, Integer>();

int screenState;
int DRAW_INTRO_STATE = 0;
int DRAW_HAIRCOLOR_STATE = 1;
int DRAW_PUBICHAIR_STATE = 2;
int DRAW_RACE_STATE = 3;
int DRAW_DEATH_STATE = 4;

int pubicHair;
int noPubicHair;

int dead;
int alive;

PImage splashImage;

void setup() {
  size(760, 415);
  background(255);
  table = loadTable("Playboy.csv", "header");
  tableLength = table.getRowCount();

  splashImage = loadImage("average.jpeg");
  
  for (TableRow row : table.rows ()) {

    String name = row.getString("name");
    int year = row.getInt("year");
    String race = row.getString("race");
    String hair = row.getString("hair");
    String pubic_hair = row.getString("pubichair");
    String hasDied = row.getString("dead");

    if (raceFrequencies.containsKey(race)) {
      Integer count = raceFrequencies.get(race);
      count++;
      raceFrequencies.put(race, count);
    } else {
      raceFrequencies.put(race, 1);
    }

    if (hairFrequencies.containsKey(hair)) {
      Integer count = hairFrequencies.get(hair);
      count++;
      hairFrequencies.put(hair, count);
    } else {
      hairFrequencies.put(hair, 1);
    }

    if (pubic_hair.equals("Yes")) {
      pubicHair++;
    }
    if (pubic_hair.equals("No")) {
      noPubicHair++;
    }

    if (hasDied.equals("TRUE")) {
      dead++;
    }
    if (hasDied.equals("FALSE")) {
      alive++;
    }
  }
}

void draw() {
  background(255);
  noFill();
  if (screenState == DRAW_INTRO_STATE) {
    drawIntro();
  }
  if (screenState == DRAW_HAIRCOLOR_STATE) { 
    drawHaircolorBreakdown();
  }
  if (screenState == DRAW_PUBICHAIR_STATE) {
    drawPubicHairBreakdown();
  }

  if (screenState == DRAW_RACE_STATE) {
    drawRaceBreakdown();
  }

  if (screenState == DRAW_DEATH_STATE) {
    drawDeathBreakdown();
  }
}

void mousePressed() {
  screenState = (screenState + 1) % 5;
}

