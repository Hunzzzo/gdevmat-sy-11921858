Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker[] walker = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  float posX = 0;
  for (int i = 0; i < walker.length; i++)
  {
    posX = 2 * (Window.windowWidth / walker.length) * (i-(walker.length / 2));
    walker[i] = new Walker();
    walker[i].position = new PVector(posX, 300);
    walker[i].mass = walker.length - i;
    walker[i].scale = walker[i].mass * 15;
  }
}

void draw()
{
  background(255);
  
  ocean.render();
  
  for (int i = 0; i < walker.length; i++)
  {
    PVector wind = new PVector (0.1, 0);
    PVector gravity = new PVector(0, -0.15f * walker[i].mass);
    
    float c = 0.1f;
    float normal = 1;
    float frictionMagnitude = c * normal;
    PVector friction = walker[i].velocity.copy();
    
    walker[i].render();
    walker[i].update();
    walker[i].applyForce(gravity);
    walker[i].applyForce(friction.mult(-1).normalize().mult(frictionMagnitude));
    walker[i].bounceOff();
    
    if (ocean.isCollidingWith(walker[i]))
    {
      PVector dragForce = ocean.calculateDragForce(walker[i]);
      walker[i].applyForce(dragForce);
    }
    else 
    {
      walker[i].applyForce(wind);
    }
  }
}
