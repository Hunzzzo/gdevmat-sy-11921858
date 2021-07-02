PVector blackHole = new PVector();

Walker spawn = new Walker();
Walker[] movingOrb = new Walker[100];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  blackHole.x = random(-640, 640);
  blackHole.y = random(-360, 360);
  
  blackHole = new PVector(blackHole.x, blackHole.y);
  
  for(int i = 0; i < movingOrb.length; i++)
  {
    movingOrb[i] = new Walker();
  }
}

void draw()
{
  background(0);
 
  for(int i = 0; i < movingOrb.length; i++)
  {
    movingOrb[i].move();
    movingOrb[i].render();
  }
  
  fill(255);
  circle(blackHole.x, blackHole.y, 50);
  
  if (frameCount > 600)
  {
    clear();
    frameCount = 0;
    setup();
  }
}
