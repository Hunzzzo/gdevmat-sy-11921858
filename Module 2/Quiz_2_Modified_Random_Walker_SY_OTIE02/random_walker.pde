class Walker
{
  float x;
  float y;

  void render()
  {
    circle(x, y, 30);
  }
  
  void randomWalker()
  {
    int rng = int(random(7));
    if (rng == 0) 
    {
      y += 10; // moves up
    }
    else if (rng == 1) 
    {
      x += 10; // moving to quadrant 1 
      y += 10; // or to the north-east
    }
    else if (rng == 2) 
    {
      x += 10; // moves right
    }
    else if (rng == 3) 
    {
      x += 10; // moving to quadrant 4 
      y -= 10; // or to the south-east
    }
    else if (rng == 4) 
    {
      y -= 10; // moves down
    }
    else if (rng == 5) 
    {
      x -= 10; // moving to quadrant 3 
      y -= 10; // or to the south-west
    }
    else if (rng == 6) 
    {
      x -= 10; // moves left
    }
    else if (rng == 7) 
    {
      x -= 10; // moving to quadrant 2 
      y += 10; // or to the north-west
    }
  }
  
  void biasWalker() 
  {
    int rng = int(random(4)); 
    if (rng <= 1) 
    {
      x += 10; // 40% to the right
    }
    else if (rng == 2) 
    {
      x -= 10; // 20% to the left
    }
    else if (rng == 3) 
    {
      y += 10; // 20% going up
    }
    else if (rng == 4) 
    {
      y -= 10; // 20% going down
    }
  }
}
