Walker[] walker = new Walker[8];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  int posY = 0;
  for (int i = 0; i < walker.length; i++)
  { 
    posY = 2 * (Window.windowHeight/walker.length) * (i - (walker.length/2));
    walker[i] = new Walker();
    walker[i].position = new PVector(-600, posY);
    walker[i].mass = walker.length - i;
    walker[i].scale = walker[i].mass * 15;
  }
}

void draw()
{
  background(80);
  
  for (int i = 0; i < walker.length; i++)
  { 
    PVector acceleration = new PVector(0.2, 0);
    
    float mew;
    if (walker[i].position.x >= 0)
    {
      mew = 0.4f;
    }
    else
    {
      mew = 0.01f;
    }
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = walker[i].velocity.copy();
    
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    
    walker[i].render();
    walker[i].update();
    walker[i].applyForce(acceleration);
    walker[i].applyForce(friction);
    walker[i].checkEdge();
  }
  
  stroke(255);
  strokeWeight(2);
  line(0, Window.top, 0, Window.bottom);
}
