void Room1()
{
  /* I was unsure how I wanted to draw this room, so I tried two different ways and found I liked the look of the second way better
  background(50);
  stroke(0);
  fill(102, 51, 0);
  rect(0, 0, 590, 30);
  rect(690, 0, 590, 30);
  rect(1250, 30, 30, 690);
  rect(0, 690, 590, 30);
  rect(690, 690, 690, 30);
  rect(0, 30, 30, 660);
  */
  
  background(102, 51, 0);
  fill(50);
  rect(30, 30, 1220, 660);
  /*As opposed to making the background grey and plotting out the individual walls, this way is much simpler, as the walls are actually the background, and the 
  background is the rectangle that has been drawn out
  */
  fill(253, 355, 178);
  rect(590, 690, 100, 30);
  //The entrance to the dungeon so the player can see where they have entered from
  
  fill(0);
  rect(590, 0, 100, 30);
  //A clear next room for the player to advance to
  
  fill(102, 51, 0);
  rect(608, 328, 64, 64);
  //Shield pedestal is in the centre of the room and obvious so the player knows to pick it up  
  
  if (drawShield == true)
  //Checking to see whether the player has picked the shield up and needs to be drawn
  {
    fill(255, 188, 0);
    rect(615, 335, 50, 50);
    //Shield in the middle of the room and a bright colour, encouraging the player to pick it up
  }
}


void playerWithoutShield()
{
  fill(0, 0, 255);
  rect(charPosX, charPosY, 50, 50);  
}

void playerWithShield()
{
  fill(0, 0, 255);
  rect(charPosX, charPosY, 50, 50);  
}
