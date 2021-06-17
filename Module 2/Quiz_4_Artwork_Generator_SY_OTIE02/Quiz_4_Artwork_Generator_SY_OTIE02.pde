void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) /tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255);
}

Walker perlinWalk = new Walker();
float R = 100;
float G = 150;
float B = 255;
float tR = 0, tG = 0, tB = 0;

void draw()
{
  noStroke();
  tR = map(noise(R), 0, 1, 0, 255f);
  tG = map(noise(G), 0, 1, 0, 255f);
  tB = map(noise(B), 0, 1, 0, 255f);
  R += 0.01f;
  G += 0.01f;
  B += 0.01f;
  fill(tR, tG, tB);
  
  perlinWalk.perlinWalker();
  perlinWalk.render();
}
