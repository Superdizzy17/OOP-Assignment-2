class Player 
{
  int BarWidth;
  int BarHeight;
  color BarColour;
  float YPosition;
  float XPosition;
  
  Player(int BarWidth,int BarHeight,color BarColour,float XPosition,float YPosition)
  {
    this.BarWidth = BarWidth;
    this.BarHeight = BarHeight;
    this.BarColour = BarColour;
    this.XPosition = XPosition;
    this.YPosition = YPosition;
  }
  
  void update()
  {
    fill(BarColour);
    rect(XPosition-BarWidth, YPosition, BarWidth, BarHeight);
  }
  
  void PlayerCollision()
  {
     if (dist(Bomber.Xpos,Bomber.Ypos,XPosition,YPosition) < 50)
        {
          PlayerLives --;
          Bomber.Ypos = 7000;
          if (Bomber.Ypos > Bomber.maxDist)
          {
              Bomber.Respawn();
          }//end if 
        }
  }
}