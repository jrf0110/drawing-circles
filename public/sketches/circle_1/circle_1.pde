void setup(){
  size( 500, 100 );
}

void draw(){
  // Make the canvas solid black
  background(0);

  // Prepare x,y coordinates
  float x = 250;
  float y = 50;

  float width = 5;
  float height = 5;

  // Draw circle 
  ellipse( x, y, width, height );
}
