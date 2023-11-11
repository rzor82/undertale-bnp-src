buffer -= 1
if (myinteract == 1 && buffer > 0)
    myinteract = 0
if (myinteract == 1 && buffer <= 0)
{
    global.interact = 1
    alarm[0] = 1
    myinteract = 2
}
if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == 0)
    {
        if (con == 0)
            global.interact = 0
        myinteract = 0
    }
}
