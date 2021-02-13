void keyPressed()
{  
  switch(key)
  {
    case 'w':
      charPosY -= charSpeed;
      break;
    case 'a':
      charPosX -= charSpeed;
      break;
    case 's':
      charPosY += charSpeed;
      break;
    case 'd':
      charPosX += charSpeed;
      break;
    /*
    How the player moves the character around, I would like the player be able to press multiple keys at once, for example W and A, letting the player move diagonally.
    To do this I believe I need to remove the break statements, allowing the switch statement to accept mutiple cases, but if I do that, the program breaks
    */
  }
}
