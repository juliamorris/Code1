ArrayList particles;
PImage imgWaterfall;
int pixelSize = 5;
int cols, rows;

void setup () {
  size(800, 425);
  background(200);
  particles = new ArrayList();
  
  imgWaterfall = loadImage("waterfall.jpg");
  
  cols = width/pixelSize;
  rows = height/pixelSize;
}

void draw () {
 
  pointilizedImage();
 
  for (int i = 0; i< particles.size(); i++) {
    Particle p = (Particle) particles.get(i);
    p.update();
    p.display();

    if (p.a <0) {
      particles.remove(i);
    } else if (p.y >= height) {
      p.ySpeed = (-p.ySpeed)*random(0.1,.5);
    }
  }

  for (int i = width/2-30; i<width/2+70; i+=5) { 
    particles.add(new Particle(-1, 1, 1, 2, i, 0));
  }
}