public void callRoom(Object thg, String funcName) throws Exception 
{
    thg.getClass().getDeclaredMethod(funcName).invoke(thg);
}

public void checkShield(Object thg, String funcName) throws Exception
{
  thg.getClass().getDeclaredMethod(funcName).invoke(thg);
}

public void checkDirection(Object thg, String funcName) throws Exception
{
  thg.getClass().getDeclaredMethod(funcName).invoke(thg);
}

//Deals with exceptions
