class Moon {
  PImage moon;

  float x;
  float y;

  float diameter;
  float speed;
  
  color col;

  Moon(float tempD, float tempS, color tempCol) {
    moon = loadImage("moon.png");
    x = random(width);
    y = height;
    diameter = tempD;
    speed = tempS;
    
    col = tempCol;
  }

  void ascend() {
    y = y - speed;
    x = x - 1;
  }

  void display() {
    //stroke(0);
    //fill(col);
    //ellipse(x, y, diameter, diameter);

    image(moon, x, y, diameter, diameter);
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
