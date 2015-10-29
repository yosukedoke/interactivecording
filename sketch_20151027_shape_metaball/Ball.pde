class Ball {
  int _radius;
  PVector _position;
  PVector _speed;
  
  Ball( int radius, PVector position, PVector speed) {

    _position = position;
    _radius = radius;
    _speed = speed;
  }

  void update() {
    _position.add(_speed);
    
    if(width < _position.x || 0 > _position.x)  {
      _speed.x *= -1;
    }
    if(height < _position.y ||0 > _position.y)  {
      _speed.y *= -1;
    }
  }
  
  void draw() {
    fill(0);
    ellipse(_position.x, _position.y, _radius, _radius);
  }
}