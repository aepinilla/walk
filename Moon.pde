class Moon {
  PImage moon;

  float x;
  float y;

  float diameter;
  float speed;

  boolean on = false;

  Moon(float tempD, float tempS) {
    moon = loadImage("moon.png");
    x = random(width);
    y = height;
    diameter = tempD;
    speed = tempS;
  }

  void start(float xpos, float ypos) {
    x = xpos;
    y = ypos;

    on = true;
  }

  void ascend() {
    if (on == true) {
      y = y - speed;
      x = x - 1;
    }
  }

  void display() {
    if (on == true) {
      image(moon, x, y, diameter, diameter);
    }
  }

  void top() {
    if (y < 0 - diameter) {
      y = height;

      if (x < 0 - diameter) {
        x = width;
      }
    }
  }
}
