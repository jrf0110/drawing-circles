class XObject {
  float x = 0;
  float y = 0;
  float size = 5;
  
  float xOrigin = 0;
  float yOrigin = 0;
  
  float xOffset = 0;
  float yOffset = 0;
  
  float period = 20;
  float amplitude = 50;
  
  ArrayList<XObject> connections = new ArrayList<XObject>();
  
  XObject(){
    
  }
  
  XObject( float _x, float _y ){
    xOrigin = _x;
    yOrigin = _y;
  }
  
  void update( float frame ){
    x = xOrigin;
    y = yOrigin;
    
    x += sin( ( frame + ( xOffset ) ) / period ) * amplitude;
    y += cos( ( frame + ( yOffset ) ) / period ) * amplitude;
    
    ellipse( x, y, size, size );
  }
  
  void updateLines( float frame ){
    stroke(255);
    for ( int i = 0; i < connections.size(); i++ ){
      line( connections.get( i ).x, connections.get( i ).y, x, y );
    }
  }
  
  void updateUserVars( float _period, float _amplitude ){
    period = _period;
    amplitude = _amplitude;
  }
  
  void connect( XObject obj ){
    connections.add( obj );
  }
}
