Moon[] moons; // Declare array
int numMoons = 20; // Declare number of moons
int currentMoon = 0; // Declare current moon

PImage walk;

void setup() {
  size(1024, 768);
  walk = loadImage("walk2.jpg");

  moons = new Moon[numMoons]; // Create array
  for (int i = 0; i < moons.length; i++) {
    moons[i] = new Moon(random(50, 100), random(2));
  }
}

void draw() {
  background(255);
  imageMode(CENTER);
  image(walk, width/2, height/2);

  for (int i = 0; i < moons.length; i++) {
    moons[i].ascend();
    moons[i].display();
    moons[i].top();
  }
}

void mousePressed() {
  moons[currentMoon].start(mouseX, mouseY);
  currentMoon++;

  if (currentMoon >= numMoons) {
    currentMoon = 0;
  }
}

void keyPressed() {
  if (key == 32) {
    if (currentMoon != 0) {
      currentMoon--;
      moons[currentMoon].remove();
      println(currentMoon);
    } else {
      currentMoon = moons.length;
    }
  }
}
