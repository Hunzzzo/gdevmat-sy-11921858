public class Walker
{
  public float x;
  public float y;
  public float tx = 0, ty = 10000;
  
  public float t = 0;
  public float thiccSize = 0;
  
  void render()
  {
    thiccSize = map(noise(t), 0, 1, 5, 150);
    t += 0.01f;
    circle(x, y, thiccSize);
  }
  
  void perlinWalker()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
  }
}
