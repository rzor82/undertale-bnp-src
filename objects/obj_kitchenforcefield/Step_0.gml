script_execute(scr_depth, 0, 0, 0, 0, 0)
if (canttalk == 0)
{
    if (myinteract == 1)
    {
        global.interact = 1
        alarm[0] = 1
        myinteract = 2
    }
    if (myinteract == 3)
    {
        if (instance_exists(mydialoguer) == 0)
        {
            global.interact = 0
            myinteract = 0
        }
    }
}
