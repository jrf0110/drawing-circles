//float PERIOD = 20;
//float AMPLITUDE = 50;

XObject o1;
XObject o2;

void setup() {
  size( 500, 300 );
  o1 = new XObject( 250, height / 2 );
  o2 = new XObject( o1.xOrigin, o1.yOrigin );
}

void outputVariables( float x, float y ) {
  fill(0);
  noStroke();
  rect( width - 65, 0, width, 44 );
  textSize(16);
  fill(255);
  text( "x: " + round( x ), width - 60, 20 );
  text( "y: " + round( y ), width - 60, 40 );
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
}

