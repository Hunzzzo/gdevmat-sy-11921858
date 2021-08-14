Walker[] walker = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walker.length; i++)
  {
    walker[i] = new Walker();
    walker[i].position = new PVector(random(-640, 640), random(-360, 360));
    walker[i].mass = random(1, 10);
    walker[i].scale = walker[i].mass * 15;
  }
}

void draw()
{
  background(80);
  
  for (int i = 0; i < walker.length; i++)
  {
    for (int h = 0; h < walker.length; h++)
    {
      walker[i].render();
      walker[i].update();
      
      walker[i].applyForce(walker[h].calculateAttraction(walker[i]));
      walker[h].applyForce(walker[i].calculateAttraction(walker[h]));
    }
  }
}
