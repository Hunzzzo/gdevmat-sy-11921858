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
    PVector force = PVector.sub(this.position, walker.position); //direction
    float distance = force.mag();
    force.normalize(); //normalize to accurately get direction
    
    distance = constrain(distance, 5, 25);
    
    float strength = (this.gravitationalConst * this.mass * walker.mass) / (distance * distance);
    force.mult(strength);
    return force;
  }
}
