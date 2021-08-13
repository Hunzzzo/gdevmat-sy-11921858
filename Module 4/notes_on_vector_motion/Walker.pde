public class Walker
{
  public PVector position = new PVector();
  // (1) add PVector velocity
  public PVector velocity = new PVector();
  // (9) add acceleration
  public PVector acceleration = new PVector();
  // (12) add limit to velocity
  public float velocityLimit = 10;
  public float scale = 15;
  
  public Walker()
  {
    
  }
  
  // (2) add new function for adding velocity to position
  public void update()
  {
    // (14) make random acceleration using using "random2D()" function
    this.acceleration = PVector.random2D();
    // (10) add acceleration change here
    this.velocity.add(this.acceleration);
    // (13) add limit to acceleration using ".limit()" function
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
  }
  
  public void render()
  {
    circle(position.x, position.y, scale);
  }
  
  // (7) make it teleport to the other side of the screen
  public void checkEdges()
  {
    if (this.position.x > Window.right)
    {
      this.position.x = Window.left;
    }
    else if (this.position.x < Window.left)
    {
      this.position.x = Window.right;
    }
    
    if (this.position.y > Window.top)
    {
      this.position.y = Window.bottom;
    }
    else if (this.position.y < Window.bottom)
    {
      this.position.y = Window.top;
    }
  }
}
