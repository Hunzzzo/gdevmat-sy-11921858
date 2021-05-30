
//funnction that gets called at the very first frame 
void setup()
{
  // (1)set up how big the window is, use given for 1080p
  size(1280, 720, P3D);
  // (3)set the camera position to middle of window
  camera(0, 0, -(height/2.0) /tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

//function that gets called every frame
void draw()
{
  // (2)set background color
  background(130); //130 is gray color, 0(min) is black, 255(max) is white
  // (4)drawing circles (x, y, extent) *extent is like size of circle
  //circle(0, 0 , 50);
  
  // (6) line thickness *default is really thin *changes all line thickness below the code
  //     *put another "strokeWeight function is you want to change the next line
  //strokeWeight(2);
  // (7) line color *default is black
  //color white = color(255, 255, 255); // declare color variable
  //fill(white); // apply color to line
  //stroke(white); // apply color to line
  
  // (5)drawing lines (x1, y1, x2, y2) or (x1, y1, z1, x2, y2, z2) *if applicable
  //line(-75, -75, 75, 75);
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawCircle();
}

// (10)cartesian plane function
void drawCartesianPlane()
{
  // (8) drawing a cartesian plane
  strokeWeight(1);
  color white = color(255, 255, 255);
  fill (white);
  stroke (white);
  line (300, 0, -300, 0);
  line (0, -300, 0, 300);
  
  // (9) draw the little marking lines on cartesian plane *starts from left or bottom 
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -5, i, 5);
    line(-5, i, 5, i);
  }
}

// (11)drawing linear functions
void drawLinearFunction()
{
  // f(x) = x + 2
  // let x be 4, then y = 6 (4,6);
  // let x be -5, then y = -3 (-5, -3);
  color red = color(255, 0, 0); //red color
  fill (red);
  noStroke(); //no outer lining of black
  
  for (int x = -200; x <=200; x++)
  {
    circle(x, x + 2, 5);  
  }
}

// (12)drawing quadratic functions
void drawQuadraticFunction()
{
  // f(x) = x^2 + 2x -5;
  // let x be 2, then y = 3;
  // let x be -1, then y = -6;
  color green = color(0, 255, 0); //green
  fill (green);
  stroke (green);
  for (float x = -300; x <= 300; x+=0.1f)
  {
    // x * 10 is to make the parabola wider
    circle(x * 10, ((float)Math.pow(x, 2) + (x * 2) - 5), 5);
  }
}

// (13) drawing circle
void drawCircle()
{
  color blue = color(0, 0, 255); //blue
  fill (blue);
  stroke (blue);
  float radius = 50;
  for (int x = 0; x <= 360; x++)
  {
    circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5);
  }
}
