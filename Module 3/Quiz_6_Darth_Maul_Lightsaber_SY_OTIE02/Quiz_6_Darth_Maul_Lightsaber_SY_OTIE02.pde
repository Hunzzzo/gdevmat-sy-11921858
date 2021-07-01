void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x,y);
}

void draw()
{
  background(130);
  
  PVector lightSaber = mousePos();
  PVector lightSaber2 = mousePos();
  PVector handle = mousePos();
  PVector handle2 = mousePos();
  
  lightSaber.normalize().mult(-300);
  strokeWeight(20);
  stroke(235, 33, 46);
  line(0, 0, (lightSaber.x), (lightSaber.y));
  strokeWeight(10);
  stroke(250);
  line(0, 0, lightSaber.x, lightSaber.y);
  
  lightSaber2.normalize().mult(300);
  strokeWeight(20);
  stroke(235, 33, 46);
  line(0, 0, (lightSaber2.x), (lightSaber2.y));
  strokeWeight(10);
  stroke(250);
  line(0, 0, lightSaber2.x, lightSaber2.y);
  
  handle.normalize().mult(75);
  strokeWeight(20);
  stroke(36, 36, 36);
  line(0, 0, (handle.x), (handle.y));
  
  handle2.normalize().mult(-75);
  strokeWeight(20);
  stroke(36, 36, 36);
  line(0, 0, (handle2.x), (handle2.y));
  
  println(lightSaber.mag());
}
