void room2()
{
  boolean room2Key = false;
  //Variable to check whether the player has the key or not
  
  background(102, 51, 0);
  fill(50);
  rect(30, 30, 1220, 660);
  //Background and walls
   
  fill(135, 130, 120);
  rect(590, 0, 100, 30);
  //Passage to northern room
  
  fill(0);
  ellipseMode(CENTER);
  ellipse(640, 10, 10, 10);
  triangle(640, 10, 635, 25, 645, 25);
  //Lock signifying the door cannot be opened straight away
  
  rect(590, 690, 100, 30);
  //Passage to southern room
  
  enemy();
  
  if (charPosX > 590 && charPosX < 690 && charPosY < 30)
    {
      if (room2Key == true)
    {
      roomNum = 3;
      charPosX = 610;
      charPosY = 630;
    }
    //Checks to see if the player has picked up the key before letting them continue to room3;
    
    else 
      {
        println("The door is locked, you need a key to open it");
      }
      //Doesn't allow the player to continue if they haven't picked up the key
    }
    //Collision detection for the northern passage in room2
      
  if (charPosX >= 590 && charPosX <= 690 && charPosY >= 640)
    {
      roomNum = 1;
      charPosX = 610;
      charPosY = 41;
    }
    //Collision detection for the southern passage in room3
}
