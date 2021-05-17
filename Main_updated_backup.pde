import javax.swing.JOptionPane;
PImage background;
int charPosX = 610;
int charPosY = 630;
int charSpeed = 10;
int roomNum = 1;
boolean drawShield = true;
boolean playerWithShield = false;
String direction = "north";
int projectileCount = 0;
int projectileLifetime = 0;
//Setting up global variables

void setup()
{
  size(1280, 720);
  frameRate(60);
  room1();
  //Setting resolution and the spawn room
  background = loadImage ("background.jpg");
  //importing an image for the background
}

void draw()
{
  clear();
  background(background);
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
