import javax.swing.JOptionPane;
int charPosX = 610;
int charPosY = 630;
int charSpeed = 10;
int roomNum = 1;
boolean drawShield = true;
boolean playerWithShield = false;
String direction = "north";
//Setting up global variables

void setup()
{
  size(1280, 720);
  room1();
  //Setting resolution and the spawn room
}

void draw()
{
  clear();
  charSpeed = 10;
  //Amount of pixels the player moves per input
  
  wallUp();
  wallDown();
  wallLeft();
  wallRight();
  //Functions that check if the player has collided with the wall and respond appropriately if they have
  
  try 
  {
    callRoom(this, "room" + roomNum);
  } 
  catch (Exception ex) {}
  //Calls whatever room the player is currently in
  
  try
  {
    checkShield(this, "shield" +playerWithShield);
  }
  catch (Exception ex) {}
  //Checks whether the shield has been picked up
}
