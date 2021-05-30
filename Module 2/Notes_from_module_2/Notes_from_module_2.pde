void setup()
{
  size(1280, 720, P3D);
  camera(0, 0,  -(height/2.0) /tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker myWalker = new Walker(); 
// ^^creates an instance of the walker class here in sketch

Walker xWalker = new Walker();

void draw()
{
  // (1) randomness function
  // float rng = random(5); 
  // ^^other words, this makes numbers with decimals 
  
  // (3) use the int to make float point values to intigers 
  // int rng = int (random(5)); //generates random numbers from 0 to 5
  // ^^this makes whole numbers, use floor like "int rng = floor (random(5));" to round down
  
  // (2) used to print in the dev console (the bottom of this window)
  // println(rng);
  
  myWalker.randomWalk();
  // (4) call out the walker 
  myWalker.render();
  xWalker.x = 100;
  xWalker.render();
}
