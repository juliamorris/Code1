class Particle {
  float x;
  float y;
  float size;
  float xSpeed;
  float ySpeed;
  int a;
  float randStart;

  Particle(float xMin, float xMax, float yMin, float yMax, float xStart, float yStart) {
    x = xStart;
    y = yStart;
    size = random(1, 5);
    xSpeed = random(xMin, xMax);
    ySpeed = random(yMin, yMax);
    a = 200;
    randStart = random(.1, .5);
  }

  void update() {
    ySpeed += 0.20;

    x += xSpeed;
    y += ySpeed;
    a--;
  }

  void display() {
    float c = map((abs(xSpeed)+abs(ySpeed)), 0, 5, 200, 250);
    noStroke();
    fill(c);
    ellipse(x, y, size, size);
  }
}