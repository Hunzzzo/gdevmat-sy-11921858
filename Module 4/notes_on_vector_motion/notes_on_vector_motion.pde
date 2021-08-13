// (3) add new instance of walker
Walker myWalker = new Walker();

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  //// (4) set velocity
  //myWalker.velocity = new PVector(5, 8);
  
  // (11) add acceleration instead of velocity
  //myWalker.acceleration = new PVector(-0.01, 0.1);
}

// vector motion 101
// 1. add velocity to the position
// 2. draw the object at positon

void draw()
{
  background(80);
  
  // *note for (5)&(6), this is essentially the vector motion 101 written above
  // (5) call update function first
  myWalker.update();
  // (6) call render function
  myWalker.render();
  
  // (8) call check edges function
  myWalker.checkEdges();
  
}
