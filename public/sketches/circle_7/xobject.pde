class XObject {
  float x = 0;
  float y = 0;
  float size = 5;
  
  float xOrigin = 0;
  float yOrigin = 0;
  
  float xOffset = 0;
  float yOffset = 0;
  
  float xOffset2 = 0;
  float yOffset2 = 0;
  
  float period = 20;
  float amplitude = 50;
  
  XObject(){
    
  }
  
  XObject( float _x, float _y ){
    xOrigin = _x;
    yOrigin = _y;
    
    xOffset2 = randomGaussian() * 5;
    yOffset2 = randomGaussian() * 5;
  }
  
  void update( float frame ){
    x = xOrigin;
    y = yOrigin;
    
    x += sin( ( frame + ( xOffset ) ) / PERIOD ) * AMPLITUDE;
    y += cos( ( frame + ( yOffset ) ) / PERIOD ) * AMPLITUDE;
    
    x += xOffset2;
    y += yOffset2;

    ellipse( x, y, size, size );
  }
  
  void updateUserVars( float _period, float _amplitude ){
    period = _period;
    amplitude = _amplitude;
  }
}
