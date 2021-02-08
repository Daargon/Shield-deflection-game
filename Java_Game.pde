import javax.swing.JOptionPane;
int charPosX = 600;
int charPosY = 650;
String currentRoom;

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
}

void Room2()
{
  background(102, 51, 0);
  fill(50);
  rect(30, 30, 1220, 660);
}

void setup()
{
  size(1280, 720);
  currentRoom = "Room1";
  Room1();
}

void draw()
{
  clear();
  switch(currentRoom)
  {
    case "Room1":
    Room1();
    break;
    case "Room2":
    Room2();
    break;
  }
  /*There is probably a better way of doing this, such as having a variable that stored the object directly, such as currentRoom = Room1(), and then the value of 
  currentRoom could be called directly rather than having to go through this switch statement, however I could not figure out what type the variable would be
  */
  fill(0, 0, 255);
  rect(charPosX, charPosY, 50, 50);  
}

void keyPressed()
{
  switch(key)
  {
    case 'w':
      charPosY -= 10;
      break;
    case 'a':
      charPosX -= 10;
      break;
    case 's':
      charPosY += 10;
      break;
    case 'd':
      charPosX += 10;
      break;
    /*
    How the player moves the character around, I would like the player be able to press multiple keys at once, for example W and A, letting the player move diagonally.
    To do this I believe I need to remove the break statements, allowing the switch statement to accept mutiple cases, but if I do that, the program breaks
    */
}
}
