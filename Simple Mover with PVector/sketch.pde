PVector G = new PVector(0,0.1);
PVector wind = new PVector(0.1,0);
Mover m;
Mover[] movers;

void setup() {
  size(800,800);
  movers = new Mover[5];
  for( int i = 0; i < movers.length; i++ ) {
    movers[i] = new Mover(width/2,height/2,3,-5);
  }
  
  ellipseMode(RADIUS);
  noStroke();
}

void draw() {
  background(100);
  for( Mover m : movers ) {
    m.update();
    m.draw();
    m.applyForce( G );
    m.applyForce( new PVector(random(-0.1,0.1), 0) );
    m.applyForce(wind);
  }
}
