void wallUp()
{
  if (charPosY <= 30)
  {
    charSpeed = 0;
    charPosY = charPosY + 1;
  }
}

void wallDown()
{
  if (charPosY >= 640)
  {
    charSpeed = 0;
    charPosY = charPosY - 1;
  }
}

void wallLeft()
{
  if (charPosX <= 30) 
  {
    charSpeed = 0;
    charPosX = charPosX + 1;
  }
}

void wallRight()
{
  if (charPosX >= 1200)
  {
    charSpeed = 0;
    charPosX = charPosX - 1;
  }
}
//Checks to see whether the player has collided with any of the coordinates that are the walls, and if they have, moves them back 
