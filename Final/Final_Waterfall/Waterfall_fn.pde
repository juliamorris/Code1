void waterfall(){
    for (int i = 0; i< particles.size(); i++) {
    Particle p = (Particle) particles.get(i);
    p.update();
    p.display();

    if (p.a <0) {
      particles.remove(i);
    } else if (p.y >= 450) {
      p.ySpeed = (-p.ySpeed)*random(0.1,.5);
    }
    
    if (p.x <= 150 || p.x >= 450) {
      particles.remove(i);
    }
  }

  for (int i = width/2-80; i<width/2+65; i+=5) { 
    particles.add(new Particle(-1, 1, 1, 2, i, 185));
  }
}