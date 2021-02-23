public void callByName(Object thg, String funcName) throws Exception 
{
    thg.getClass().getDeclaredMethod(funcName).invoke(thg);
}
