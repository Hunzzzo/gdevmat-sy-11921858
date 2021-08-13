Walker[] walker = new Walker[10];
PVector wind = new PVector(0, -0.4);
PVector gravity = new PVector(0.15, 0);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walker.length; i++)
  {
    walker[i] = new Walker();
    walker[i].mass = walker[i].mass += i;
    walker[i].scale = walker[i].mass * 15;
  }
}

void draw()
{
  background(0);
  for (int i = 0; i < walker.length; i++)
  {
    walker[i].render();
    walker[i].update();
    walker[i].applyForce(wind);
    walker[i].applyForce(gravity);
    walker[i].bounceOff();
  }
}
