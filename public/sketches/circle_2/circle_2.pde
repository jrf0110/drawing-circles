//float PERIOD = 20;
//float AMPLITUDE = 50;

void setup(){
  size( 500, 100 );
}

void outputVariables( float x ){
  textSize(16);
  text( "x: " + round( x ), width - 60, 20 );
}

void draw(){
  background(0);

  float i = (float) frameCount;
  
  // Starting point
  float x = 250;
  
  // Change PERIOD and AMPLITUDE with the sliders
  x += sin( i / PERIOD ) * AMPLITUDE;

  outputVariables( x );

  ellipse( x, 50, 5, 5 );
}
