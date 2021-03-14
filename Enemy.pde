int enemyPosX = 190;
int enemyPosY = 500;
boolean alive = true;
int time = millis();
//Initial enemy coordinates
void enemy()
{
  if (alive == true)
  {
    fill(255, 0, 0);
    rect(enemyPosX, enemyPosY, 50, 50);
    //Drawing the enemy
    
    shootProjectile();
  }
  //Whilst the enemy is alive, it appears to the player and shoots projectiles at them
  

}
