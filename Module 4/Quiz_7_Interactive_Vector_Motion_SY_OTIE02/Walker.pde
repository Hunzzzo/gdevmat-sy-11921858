public class Walker
{
  public PVector position = new PVector(random(width), random(height));
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 20;
  
  public void update()
  {
    PVector mousePos = new PVector(mouseX, mouseY);
    PVector direction = PVector.sub(mousePos, position);
    
    mousePos.sub(position);
    this.acceleration = direction.normalize().mult(0.2);
    
    this.velocity.add(this.acceleration);
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
  }
  
  public void render()
  {
    circle(position.x, position.y, scale);
  }
  
}
