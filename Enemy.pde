class Enemy
{
  float Xpos; 
  float Ypos; 
  float YSpeed;
  float Gravity;
  float maxDist;

  Enemy()
  {
    Xpos = random(10, width-10);
    Ypos = 0;
    YSpeed = 1;
    Gravity = 0.3;

    maxDist = 9000; //Spawn Rate When Ypos Reaches max dist the enemy respawns
  }
  
  void Create()
  {
    //Draw Enemy
    stroke(#FF8D00);
    strokeWeight(0.8);
    fill(#FF8D00, 60);
    
    beginShape();
    vertex(Xpos, Ypos + 2);
    vertex(Xpos - 8, Ypos - 10);
    vertex(Xpos - 5, Ypos - 10);
    vertex(Xpos - 5, Ypos - 50);
    vertex(Xpos, Ypos - 60);
    vertex(Xpos + 5, Ypos - 50);
    vertex(Xpos + 5, Ypos - 10);
    vertex(Xpos + 8, Ypos - 10);
    endShape(CLOSE);
  }
  
  void Update()
  {
    Create();
    Ypos += YSpeed; //Change Y position to go down
    YSpeed += Gravity; //Increase Speed Over time
  }
  
  //Reset the Enemy back to beginning
  void Respawn()
  {
    Xpos = random(10, width-10); 
    Ypos = 0;
    YSpeed = 2;
    
    Create();
  }
  
}