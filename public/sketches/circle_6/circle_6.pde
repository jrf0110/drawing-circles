//float PERIOD = 20;
//float AMPLITUDE = 50;

// Number of XObjects we're going to draw
int NUM_OBJECTS = 30;

// This is an array of XObjects
XObject[] objects = new XObject[ NUM_OBJECTS ];

void setup() {
  size( 500, 300 );
  initObjects();
}

void initObjects(){
  for ( int i = 0; i < NUM_OBJECTS; i++ ){
    objects[i] = new XObject( width / 2, height / 2 ); 
  }
}

void draw() {
  background(0);

  float frame = (float) frameCount;

  for ( int i = 0; i < NUM_OBJECTS; i++ ){
    objects[i].updateUserVars( PERIOD, AMPLITUDE );
    
    // Evenly place objects along the circle
    // Remember that ( 2 * PI * PERIOD ) is the diameter
    // diameter / NUM_OBJECTS is the length of an arc between
    // each object. Multiply it by its index in the array to
    // its position on the circle
    objects[i].xOffset = ( ( 2 * PI * PERIOD ) / NUM_OBJECTS ) * i;
    objects[i].yOffset = objects[i].xOffset;
    
    objects[i].update( frame );
  }
}
