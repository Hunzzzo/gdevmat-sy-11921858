public class Walker
{
  public float gaussian = randomGaussian();
  public float standardDeviation = 1000;
  public float mean = 0;
  public float y = random(-Window.windowHeight / 2, Window.windowHeight / 2);
  public float x = standardDeviation * gaussian + mean + y;
  public PVector orbs = new PVector(x, y);
  float R = random (0, 255);
  float G = random (0, 255);
  float B = random (0, 255);
  float ticc = random(10, 50);
  
  void move()
  {
    PVector moving = PVector.sub(blackHole, orbs);
    orbs.add(moving.normalize().mult(5));
  }
  
  void render()
  {
    noStroke();
    fill(R, G, B);
    circle(orbs.x, orbs.y, ticc);
  }
}
