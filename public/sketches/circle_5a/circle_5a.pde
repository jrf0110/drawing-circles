//float PERIOD = 20;
//float AMPLITUDE = 50;

XObject o1;
XObject o2;

void setup() {
  size( 500, 300 );
  o1 = new XObject( 250, height / 2 );
  o2 = new XObject( o1.xOrigin, o1.yOrigin );
}

void draw() {
  background(0);

  float i = (float) frameCount;

  o1.updateUserVars( PERIOD, AMPLITUDE );
  o2.updateUserVars( PERIOD, AMPLITUDE );
  
  o2.xOffset = PI * o2.period;
  o2.yOffset = PI * o2.period;

  o1.update( i );
  o2.update( i );
  
  // Draw a line between o1 and o2
  stroke(255);
  line( o1.x, o1.y, o2.x, o2.y );
}

