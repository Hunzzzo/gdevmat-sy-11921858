public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;
  
  public float mass = 1;
  
  float R = random(0, 255);
  float G = random(0, 255);
  float B = random(0, 255);
  
  public Walker()
  {
    
  }
  
  // newton's second law of motion
  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f); // force accumulation
  }
  
  public void update()
  {
    //this.acceleration = PVector.random2D();
    this.velocity.add(this.acceleration); //velocity accumulation
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
    this.acceleration.mult(0); // resets acceleraiton every frame
  }
  
  public void render()
  {
    noStroke();
    fill(R, G, B);
    circle(position.x, position.y, scale);
  }
}
