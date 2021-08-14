Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker myWalker = new Walker();

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  myWalker.position = new PVector(0, 300);
  myWalker.mass = 5;
  myWalker.scale = myWalker.mass * 10;
}

void draw()
{
  background(255);
  
  ocean.render();
  myWalker.render();
  myWalker.update();
  
  PVector gravity = new PVector(0, -0.25 * myWalker.mass);
  myWalker.applyForce(gravity); // apply gravity to walker
  
  float c = 0.1f;
  float normal = 1;
  float frictionMagnitude = c * normal;
  PVector friction = myWalker.velocity.copy();
  
  //apply friction to water
  myWalker.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude));
  
  if (myWalker.position.y <= Window.bottom)
  {
    myWalker.position.y = Window.bottom;
    myWalker.velocity.y *= -1;
  }
  
  if (ocean.isCollidingWith(myWalker))
  {
    println("Colliding!");
    PVector dragForce = ocean.calculateDragForce(myWalker);
    myWalker.applyForce(dragForce);
  }
}
