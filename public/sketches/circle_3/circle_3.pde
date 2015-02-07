//float PERIOD = 20;
//float AMPLITUDE = 50;

void setup(){
  size( 500, 300 );
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
  background(0);

  float i = (float) frameCount;
  
  // Starting point
  float x = 250;
  float y = height / 2;
  
  // Change PERIOD and AMPLITUDE with the sliders
  x += sin( i / PERIOD ) * AMPLITUDE;
  y += cos( i / PERIOD ) * AMPLITUDE;

  outputVariables( x, y );

  ellipse( x, y, 5, 5 );
}
