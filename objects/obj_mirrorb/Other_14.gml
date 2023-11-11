var act = "Feel"
if murder
{
    global.msg[0] = " "
    con = 1
}
else
{
    global.msg[0] = "* You closed your eyes and&  reached out to the figure&  in the mirror.../"
    if (actcon == 0)
        global.msg[1] = "* You felt a tap on your&  shoulder^1, but nobody was there./^"
    else if (actcon == 4)
        global.msg[1] = "* You felt a loving embrace./^"
    else
    {
        global.msg[1] = "* You felt the smooth crystal&  wall in front of you./^"
        return;
    }
    actcon++
}
