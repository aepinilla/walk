class Moon {
  PImage moon;

  float x;
  float y;

  boolean on = false;

  float diameter;
  float constant;
  float angle;
  float scalar;
  float speed;

  Moon(float tempD, float tempC, float tempA, float tempSc, float tempS) {
    moon = loadImage("moon.png");

    diameter = tempD;
    constant = tempC;
    angle = tempA;
    scalar = tempSc;
    speed = tempS;
  }

  void start(float xpos, float ypos) {
    x = xpos;
    y = ypos;

    on = true;
  }

  void remove() {
    on = false;
  }

  void orbit() {
    if (on == true) {
      x = mouseX + sin(angle-10) * scalar;
      y = mouseY + cos(angle) * scalar;
      angle = angle + speed;
    }
  }

  void display() {
    if (on == true) {
      image(moon, x, y, diameter, diameter);
    }
  }
}
