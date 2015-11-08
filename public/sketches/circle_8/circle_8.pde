//float PERIOD = 20;
//float AMPLITUDE = 50;
//
//// Number of XObjects we're going to draw
//int NUM_OBJECTS = 3;

// This is an array of XObjects
XObject[] objects = new XObject[ NUM_OBJECTS ];

int pNumObjects = 0;

void setup() {
  size( 500, 300 );
}

void initObjects(){
  for ( int i = 0; i < NUM_OBJECTS; i++ ){
    objects[i] = new XObject( width / 2, height / 2 );
    if ( i > 0 ){
      objects[ i - 1 ].connect( objects[ i ] );
    }
   
   if ( i == NUM_OBJECTS - 1 ){
     objects[ i ].connect( objects[0] );
   }
  }
}

void draw() {
  background(0);
  
  if ( pNumObjects != NUM_OBJECTS ){
    initObjects();
  }
  
  pNumObjects = NUM_OBJECTS;

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
  
  for ( int i = 0; i < NUM_OBJECTS; i++ ){
    objects[i].updateLines( frame );
  }
}
