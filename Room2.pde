boolean room2Key = false;
int enemyPosX = 190;
int enemyPosY = 500;
boolean enemyAlive = true;
int projLife = 0;
int projPosX = enemyPosX + 52;
int projPosY = enemyPosY + 22;
String travelling = "east";
boolean deflect = false;
void room2()
{
  background = loadImage ("background.jpg");
  fill(50);
  rect(30, 30, 1220, 660);
  //Background and walls
   
  fill(135, 130, 120);
  rect(590, 0, 100, 30);
  //Passage to northern room
  
  rect(590, 690, 100, 30);
  //Passage to southern room
  
  
  if (room2Key == false)
  {
    fill(0);
    ellipseMode(CENTER);
    ellipse(640, 10, 10, 10);
    triangle(640, 10, 635, 25, 645, 25);
    //Lock signifying the door cannot be opened straight away
  }
  //Lock is only drawn before the enemy is killed after which, the door unlocks and the symbol is no longer drawn
  
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
    
  if (enemyAlive == true)
  {
    fill(255, 0, 0);
    rect(enemyPosX, enemyPosY, 50, 50);
    //Drawing the enemy
    
    if (projLife == 75)
    {
      projLife = 0;
      projPosX = enemyPosX + 52;
      projPosY = enemyPosY + 22;
      travelling = "east";
      deflect = false;
    }
    //Resets the projectiles attributes, such as its coordinates and whether it has been deflected or not when it reaches the end of its life
      
    if (projLife < 500 & deflect == false)
    {
      fill (255, 255, 0);
      rect(projPosX, projPosY, 5, 5);
      projPosX += 10;
    }
    //Moves the projectile towards the enemy if it has not been deflected
    
    if (projPosX > charPosX & projPosX < charPosX + 50 & projPosY > charPosY & projPosY < charPosY + 50 & direction == "west")
    {
      deflect = true;
    }
    //If the projectile comes into contact with the player and the player is facing the right way, it is deflected back towards the enemy
    
    if (projPosX > charPosX & projPosX < charPosX + 50 & projPosY > charPosY & projPosY < charPosY + 50 & direction != "west")
    {
      exit();
      //https://processing.org/reference/exit_.html
    }
    //If the projectile comes into contact with the player and the player is facing the wrong way, the player is killed and the game ends
    
    if (deflect == true)
    {
      fill (255, 255, 0);
      rect(projPosX, projPosY, 5, 5);
      projPosX -= 10;
    }
    //Moves the projectile back towards the enemy if the projectile has been deflected
    
    if (projPosX - 50 < enemyPosX & projPosY > enemyPosY & deflect == true)
    {
      enemyAlive = false;
      room2Key = true;
    }
    //If the projectile hits the enemy, enemyAlive is set to false so it is no longer drawn and these checks are not longer made and the door is unlocked so the player can advance
    
    projLife += 1;
    //After every iteration of the loop, the projectiles life span is increased so that if the player misses it, once it has reached the end of its lifespan, it is reset so they have another chance
  }
}
