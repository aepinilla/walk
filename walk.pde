Moon[] moons; // Declare array
int numMoons = 7; // Declare number of moons
int currentMoon = 0; // Declare current moon

PImage walk;

void setup() {
  size(1024, 768);
  walk = loadImage("walk2.jpg");

  moons = new Moon[numMoons]; // Create array
  for (int i = 0; i < moons.length; i++) {
    moons[i] = new Moon(random(50, 110), 300, 0.02, 325, 0.02);
  }
}

void draw() {
  imageMode(CENTER);
  image(walk, width/2, height/2); 

  for (int i = 0; i < moons.length; i++) {
    moons[i].orbit();
    moons[i].display();
  }
}

void mousePressed() {
  moons[currentMoon].start();
  currentMoon++;
  image(walk, width/2, height/2);

  if (currentMoon >= numMoons) {
    currentMoon = 0;
  }
}

void keyPressed() {
  if (key == 32) {
    if (currentMoon != 0) {
      currentMoon--;
      moons[currentMoon].remove();
    } else {
      currentMoon = moons.length;
    }
  }
}
