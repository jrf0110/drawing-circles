//float PERIOD = 20;
//float AMPLITUDE = 50;
//
//// Number of XObjects we're going to draw
//int NUM_OBJECTS = 20;
//
//int NUM_CONNECTIONS = 35;

// This is an array of XObjects
XObject[] objects = new XObject[ NUM_OBJECTS ];

int pNumObjects = 0;
int pNumConnections = 0;

void setup() {
  size( 500, 300 );
}

void initObjects(){
  for ( int i = 0; i < NUM_OBJECTS; i++ ){
    objects[i] = new XObject( width / 2, height / 2 );
  }
  
  int r1, r2;
  
  // Connect each object to each other
  for ( int i = 0; i < NUM_OBJECTS; i++ ){
    for ( int ii = 0; ii < NUM_OBJECTS; ii++ ){
      if ( ii == i ) continue;
      
      objects[ i ].connect( objects[ ii ] );
    }
  }
  
//  for ( int i = 0; i < NUM_CONNECTIONS; i++ ){
//    r1 = int( random( NUM_OBJECTS ) );
//    do {
//      r2 = int( random( NUM_OBJECTS ) );
//    } while ( r1 == r2 );
//    objects[ r1 ].connect( objects[ r2 ] );
//  }
}

void draw() {
  background(0);
  
  if ( pNumObjects != NUM_OBJECTS/* || pNumConnections != NUM_CONNECTIONS */){
    initObjects();
  }
  
  pNumObjects = NUM_OBJECTS;
//  pNumConnections = NUM_CONNECTIONS;

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
