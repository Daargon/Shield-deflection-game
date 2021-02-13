import javax.swing.JOptionPane;
int charPosX = 610;
int charPosY = 630;
int charSpeed = 10;
String currentRoom;
boolean drawShield = true;
boolean playerWithShield = false;

void setup()
{
  size(1280, 720);
  currentRoom = "Room1";
  Room1();
}

void draw()
{
  clear();
  charSpeed = 10;
  
  if (charPosX <= 30) 
  {
    charSpeed = 0;
    charPosX = charPosX + 1;
  }
  
  if (charPosX >= 1200)
  {
    charSpeed = 0;
    charPosX = charPosX - 1;
  }
  
  if (charPosY >= 640)
  {
    charSpeed = 0;
    charPosY = charPosY - 1;
  }
  
  if (charPosY <= 30)
  {
    charSpeed = 0;
    charPosY = charPosY + 1;
  }
  /* There is some form of collision detection, however it isn't perfect, as the player more bounces off the wall that collides with it. Additionally, the player is
  1 pixel off after they collide with a wall
  */
  
  switch(currentRoom)
  {
    case "Room1":
      Room1();
      
      if (charPosX >= 615 && charPosX <= 665 && charPosY >= 335 && charPosY <= 385)
      {
        drawShield = false;
      }
      /*Checks to see whether the player has collided with the shield and if they have, they have "picked it up". At the moment it only checks to see if the top left 
      has passed these boundaries. If the bottom left passes through, it does not register as picking it up. I would like to fix this, however I am not currently sure 
      how
      */
      
      if (charPosX > 590 && charPosX < 690 && charPosY < 30)
      {
        if (drawShield == false)
        {
          currentRoom = "Room2";
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
        println ("You can't leave yet, you still have a ob to do");
      }
      //Collision detection for the entrance of the cave
      
      break;
    case "Room2":
      Room2();
      break;
  }
  /*There is probably a better way of doing this, such as having a variable that stored the object directly, such as currentRoom = Room1(), and then the value of 
  currentRoom could be called directly rather than having to go through this switch statement, however I could not figure out what type the variable would be
  */
  
  if (playerWithShield == false)
    {
      fill(0, 0, 255);
      rect(charPosX, charPosY, 50, 50);  
    }
  
  println(charPosX, charPosY);
}
