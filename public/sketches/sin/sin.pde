//float PERIOD = 20;
//float AMPLITUDE = 50;
float SLOWNESS = 1;
float RESTARTDELAY = 50;
float YOFFSET = 50;

float px = -100, py = -100;

boolean hasDrawnOnce = false;

void setup(){
  size( 500, 100 );
  background(0);
  stroke(255);
}

void drawOnce(){
  strokeWeight(1);
  line( 0, height / 2, width, height / 2 );
}

void outputVariables( float x, float y ){
  fill(0);
  noStroke();
  rect( width - 65, 0, width, 44 );
  textSize(16);
  fill(255);
  text( "x: " + round( x ), width - 60, 20 );
  text( "y: " + round( y ), width - 60, 40 );
}

void draw(){
  if ( !hasDrawnOnce ){
    hasDrawnOnce = true;
    drawOnce();
  }
  
  smooth();
  
  stroke(255);
  strokeWeight(3);
  
  float i = (float) frameCount;
  
  float x = (i / SLOWNESS) % (width + RESTARTDELAY);
  float y = (sin( x / PERIOD ) * AMPLITUDE) + YOFFSET;

  if ( x == 0 ){
    background(0);
    hasDrawnOnce = false;
  } else {
    line( x, y, px, py );
  }
  
  outputVariables( x, y );
  
  px = x;
  py = y;
}
