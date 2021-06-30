void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

  //float x, y;
  //float xSpeed = 5; //value of speed of ball (left, right)
  //float ySpeed = 8; //value of speed of ball (top, bottom)
  PVector position = new PVector();
  PVector speed = new PVector(5, 8); //sets a speed

void draw()
{
  background(255); 
  // ^^there is a difference between putting this here and putting it in void set up
  // ^^covers up the previous drawing since it is also being drawn every frame
  
  //x += xSpeed; //to move the circle || add speed to current position
  //y += ySpeed; //to move the circle || add speed to current position
  //position.x += speed.x; //to make use of vectors
  //position.y += speed.y;
  position.add(speed); //another way to use vectors but this is better i think
  //vector operation syntaxes
  //PVector.add(PVector) // for adding, duh...
  //PVector.sub(PVector)
  
  //if ((x > Window.right) || (x < Window.left))//checks if the left or right is reached
  //{
    //xSpeed *= -1; //to make the circle bounce back
  //}
  //if ((y > Window.top) || (y < Window.bottom))//checks if the top or bottom is reached
  //{
    //ySpeed *= -1; //to make the circle bounce back
  //}
  if ((position.x > Window.right) || (position.x < Window.left))
  {
    speed.x *= -1; 
  }
  if ((position.y > Window.top) || (position.y < Window.bottom))
  {
    speed.y *= -1; 
  }
  
  // render the circle
  fill(182, 52, 100);
  //circle(x, y, 50);
  circle(position.x, position.y, 50);
}
