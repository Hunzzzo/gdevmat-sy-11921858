void setup()
{
  size(1280, 720, P3D);
  // camera(0, 0, -(height/2.0) /tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background (0);
}

void draw()
{
  noStroke();
  fill (random (0, 255), random (0, 255), random (0, 255), random (10, 100));
  float gaussian = randomGaussian();
  float y = random(height);
  float standardDeviation = 1000;
  float mean = 0;
  float diffGaussian = randomGaussian();
  float diffMean = 5;
  float diffStandardDeviation = 50;
  float thiccness = diffStandardDeviation * diffGaussian + diffMean;
  float x = standardDeviation * gaussian + mean + y;
  circle (x, y, thiccness);
}
