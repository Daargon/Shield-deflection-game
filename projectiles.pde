int projectilePosX = enemyPosX + 22;
int projectilePosY = enemyPosY + 22;
void projectile()
{
  fill (255, 255, 0);
  rect(projectilePosX, projectilePosY, 5, 5);
}

void shootProjectile()
{
  if (millis() > time + 3000)
    {
      projectile();
      time = millis();
    }
    //https://forum.processing.org/one/topic/how-to-perform-an-action-every-x-seconds-time-delays.html
    
   projectilePosX += 15;
}
