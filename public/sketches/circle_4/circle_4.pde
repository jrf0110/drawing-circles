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
  float x1 = 250;
  float y1 = height / 2;
  float x2 = x1;
  float y2 = y1;

  float x2y2offset = PI * PERIOD;
  
  // Change PERIOD and AMPLITUDE with the sliders
  x1 += sin( i / PERIOD ) * AMPLITUDE;
  y1 += cos( i / PERIOD ) * AMPLITUDE;
  
  x2 += sin( ( i + x2y2offset ) / PERIOD ) * AMPLITUDE;
  y2 += cos( ( i + x2y2offset  ) / PERIOD ) * AMPLITUDE;

  ellipse( x1, y1, 5, 5 );
  ellipse( x2, y2, 5, 5 );
}
