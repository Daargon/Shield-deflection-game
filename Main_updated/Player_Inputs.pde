void keyPressed()
{  
  switch(key)
  {
    case 'w':
      charPosY -= charSpeed;
      direction = "north";
      break;
    case 'a':
      charPosX -= charSpeed;
      direction = "west";
      break;
    case 's':
      charPosY += charSpeed;
      direction = "south";
      break;
    case 'd':
      charPosX += charSpeed;
      direction = "east";
      break;
    /*
    How the player moves the character around, I would like the player be able to press multiple keys at once, for example W and A, letting the player move diagonally.
    To do this I believe I need to remove the break statements, allowing the switch statement to accept mutiple cases, but if I do that, the program breaks
    */
  }
  println(charPosX, charPosY, direction);
}

void shieldtrue()
{
  fill(0, 0, 255);
  rect(charPosX, charPosY, 50, 50); 
  
  try
  {
    checkDirection(this, direction);
  }
  catch (Exception ex) {}
}

void north()
{
  fill(255, 188, 0);
  rect(charPosX, charPosY, 50, 5);
}

void west()
{
  fill(255, 188, 0);
  rect(charPosX, charPosY, 5, 50);
}

void south()
{
  fill(255, 188, 0);
  rect(charPosX, charPosY + 50, 50, 5);
}

void east()
{
  fill(255, 188, 0);
  rect(charPosX + 51, charPosY, 5, 50);
}
