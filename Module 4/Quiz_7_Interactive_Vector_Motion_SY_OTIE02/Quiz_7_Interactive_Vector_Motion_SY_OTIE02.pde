Walker[] myWalker = new Walker[100];

void setup()
{
  size(1280, 720, P3D);
  //camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < myWalker.length; i++)
  {
    myWalker[i] = new Walker();
  }
}

void draw()
{
  background(0);
  
  for (int i = 0; i < myWalker.length; i++)
  {
    myWalker[i].update();
    myWalker[i].render();
  }
}
