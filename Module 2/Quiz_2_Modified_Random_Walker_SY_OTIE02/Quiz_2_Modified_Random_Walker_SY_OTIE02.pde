void setup()
{
size(1280, 720, P3D);
camera(0, 0, -(height/2.0) /tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker randomWalk = new Walker();
Walker randomWalkBiased = new Walker();

void draw()
{
  noStroke();
  fill (random (0, 255), random (0, 255), random (0, 255), random (50, 100));
  randomWalk.randomWalker();
  randomWalk.render();
  randomWalkBiased.biasWalker();
  randomWalkBiased.render();
}
