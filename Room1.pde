void room1()
{ 
  background(102, 51, 0);
  fill(50);
  rect(30, 30, 1220, 660);
  //Background and walls
  
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
  
    if (charPosX >= 615 && charPosX <= 715 && charPosY >= 335 && charPosY <= 385 /*Top left side of player*/ ||
      charPosX + 50 >= 615 && charPosX + 50 <= 715 && charPosY >= 335 && charPosY <= 385 /*Top right of player ||
      charPosX >= 615 && charPosX <= 715 && charPosY >= 335 && charPosY <= 385 /*Bottom left side of player ||
      charPosX >= 615 && charPosX <= 715 && charPosY >= 335 && charPosY <= 385 /*Bottom right side of player */)
      {
        drawShield = false;
        playerWithShield = true;
      }
      /*Checks to see whether the player has collided with the shield and if they have, they have "picked it up". At the moment it only checks to see if the top left 
      has passed these boundaries. If the bottom left passes through, it does not register as picking it up. I would like to fix this, however I am not currently sure 
      how
      */
      
  if (charPosX > 590 && charPosX < 690 && charPosY < 30)
      {
        if (drawShield == false)
      {
        roomNum = 2;
        charPosX = 610;
        charPosY = 630;
      }
        //Checks to see if the player has picked up the shield before letting them continue to room2;
      else 
        {
          println("You should probably get that shield first");
        }
        //Doesn't allow the player to continue if they haven't picked up the shield
      }
      //Collision detection for the northern entrance to room2
      
  if (charPosX >= 590 && charPosX <= 690 && charPosY >= 640)
    {
      println ("You can't leave yet, you still have a job to do");
    }
    //Collision detection for the entrance of the cave
}


void shieldfalse()
{
  fill(0, 0, 255);
  rect(charPosX, charPosY, 50, 50); 
}
//A version of the player without the shield, for before they have picked it up
