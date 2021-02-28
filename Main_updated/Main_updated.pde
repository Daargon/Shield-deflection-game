import javax.swing.JOptionPane;
int charPosX = 610;
int charPosY = 630;
int charSpeed = 10;
int roomNum = 1;
boolean drawShield = true;
boolean playerWithShield = false;
String direction = "north";

void setup()
{
  size(1280, 720);
  room1();
}

void draw()
{
  clear();
  charSpeed = 10;
  
  wallUp();
  wallDown();
  wallLeft();
  wallRight();
  //This area has been tidied up by putting all the checks into functions that are called at the start of every frame
  
  try 
  {
    callRoom(this, "room" + roomNum);
  } 
  catch (Exception ex) {}
  /*Similarly, this area has also been made more efficient. After contacting Neil Buckley, he showed me this piece of code that is able to directly call the room that
  the player is currently in, rather than the much less efficient way of constantly checking what the variable currentRoom was and then calling the correct room from 
  there
  */
  
  try
  {
    checkShield(this, "shield" +playerWithShield);
  }
  catch (Exception ex) {}
}
