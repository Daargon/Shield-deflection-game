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
    //Tells the program what key the player has pressed and therefore which way they are moving
  }
  println(charPosX, charPosY, direction);
  //Prints player coordinates and direction they are facing. For development only
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
//Function that draws the version of the player with a shield after they have picked it up

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
//After being told the direction the player is trying to go, moves the player depending on the direction
//Moving diagonally is possible, however the player has to press the keys at the exact same time so it isn't very user friendly
