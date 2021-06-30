class Walker
{
  PVector position = new PVector();
  PVector speed = new PVector(10, 10);

  void moveAndBounce()
  {
    noStroke();
    
    position.add(speed);
    
    if ((position.x > Window.right) || (position.x < Window.left))
    {
      speed.x *= -1;
      fill (random (0, 255), random (0, 255), random (0, 255));
    }
    if ((position.y > Window.top) || (position.y < Window.bottom))
    {
      speed.y *= -1;
      fill (random (0, 255), random (0, 255), random (0, 255));
    }
    
    circle(position.x, position.y, 50);
  }
}
