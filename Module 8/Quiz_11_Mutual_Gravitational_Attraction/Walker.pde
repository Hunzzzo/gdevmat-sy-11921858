public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;
  
  public float mass = 1;
  
  public float gravitationalConst = 1;
  
  float R = random(0, 255);
  float G = random(0, 255);
  float B = random(0, 255);
  float alpha = random(10, 100);
  
  public Walker()
  {
    
  }
  
  // newton's second law of motion
  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f);
  }
  
  public void update()
  {
    this.velocity.add(this.acceleration);
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
    this.acceleration.mult(0);
  }
  
  public void render()
  {
    noStroke();
    fill(R, G, B, alpha);
    circle(position.x, position.y, scale);
  }
  
  public void bounceOff()
  {
    if (this.position.y <= Window.bottom)
    {
      this.position.y = Window.bottom;
      this.velocity.y *= -1;
    }
    if (this.position.x >= Window.right)
    {
      this.position.x = Window.right;
      this.velocity.x *= -1;
    }
  }
  
  public PVector calculateAttraction(Walker walker)
  {
    PVector force = PVector.sub(this.position, walker.position);
    float distance = force.mag();
    force.normalize();
    
    distance = constrain(distance, 10, 30);
    
    float strength = (this.gravitationalConst * this.mass * walker.mass) / (distance * distance);
    force.mult(strength);
    return force;
  }
}
