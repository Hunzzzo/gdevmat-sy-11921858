int globalVariable = 100;
int time = 10000;

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0,  -(height/2.0) /tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(0);
  summonCartesianPlane();
  summonParabola();
  summonLinearFunction();
  summonSineWave();
}

void summonCartesianPlane()
{
  strokeWeight(1);
  color white = color(255, 255, 255);
  fill (white);
  stroke (white);
  line (300, 0, -300, 0);
  line (0, -300, 0, 300);
  for (int i = -300; i <= 300; i += 10)
  {
    line (i, -5, i, 5);
    line (-5, i, 5, i);
  }
}

void summonParabola()
{
  //f(x) = x^2 - 15x - 3
  color yellow = color (255, 255, 0);
  fill (yellow);
  stroke (yellow);
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle (x, ((float) Math.pow (x, 2) - (x * 15) - 3), 5);
  }
}

void summonLinearFunction()
{
  //f(x) = -5x + 30
  color purple = color (128, 0, 128);
  fill (purple);
  stroke (purple);
  for (int x = -200; x <=200; x++)
  {
    circle (x, (x * -5) + 30, 5);
  }
}

void summonSineWave()
{
  color navy = color (0, 0, 128);
  fill (navy);
  stroke (navy);
  for (float x = -300; x <= 300; x += 0.1f)
  { 
  circle (x, (float) 1 + 60 * sin (x / 20), 5);
  x = x + 1;
  }
}
