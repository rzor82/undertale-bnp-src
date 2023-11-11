if (myinteract == 1)
{
    global.interact = 1
    alarm[0] = 1
    myinteract = 2
}
if (myinteract == 3)
{
    if instance_exists(mydialoguer)
    {
        with (mydialoguer.writer)
            myview = 0
    }
    else
    {
        global.interact = 0
        myinteract = 0
    }
}
if (global.debug == true)
{
    if keyboard_check_pressed(ord("V"))
    {
        if (visible == false)
            visible = true
        else if (visible == true)
            visible = false
    }
}
