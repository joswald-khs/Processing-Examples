class Mover {
  PVector position;
  PVector velocity;

  color c;
  
  Mover( float x, float y, float dx, float dy ) {
    position = new PVector(x,y);
    velocity = new PVector(dx,dy);     
    c = color(random(256),random(256),random(256));
  }
  
  void update() {
    position.add(velocity);
  }
  
  void draw() {
    fill(c);
    circle(position.x,position.y,10);
  }
  
  void applyForce( PVector force ) {
    velocity.add( force );
  }
}
