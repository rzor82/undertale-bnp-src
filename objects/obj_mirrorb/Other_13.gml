var act = "Forgive/Love"
if murder
{
    global.msg[0] = "* You tried to forgive&  yourself.../"
    if (actcon == 0)
        global.msg[1] = "* You feel a weight slowly&  starting to lift./^"
    else if (actcon == 3)
    {
        global.mercy = 1
        global.msg[1] = "* You start to tear up..^1.&* Feeling has returned to&  your hands./^"
        global.monsterdef[myself] = -100000
        mercymod = -999999999
        shieldhp = 0
        deflect = 1
    }
    else
    {
        global.msg[1] = "* The weight over you still&  remains./^"
        return;
    }
    actcon++
}
else
{
    global.msg[0] = "* You tried to show some love.../"
    if (actcon == 2)
        global.msg[1] = "* You felt a warm feeling rise in&  your chest./^"
    else if (actcon == 3)
        global.msg[1] = "* The feeling in your chest&  grows./^"
    else if (actcon == 5)
    {
        global.mercy = 1
        global.msg[1] = "* You feel a sense of calm wash&  over you./"
        global.msg[2] = "* The uneasy feeling in the air&  has subsided./^"
        global.monsterdef[myself] = -100000
        mercymod = 999999999
        shieldhp = 0
    }
    else
    {
        global.msg[1] = "* But there was nothing there./^"
        return;
    }
    actcon++
}
