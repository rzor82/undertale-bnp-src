var act = "Reflect/Think"
if murder
{
    global.msg[0] = "* You tried to reflect on&  your actions.../"
    global.msg[1] = "* What^1?&  You didn't do that?/^"
    if (actcon == 1)
    {
        global.msg[1] = "* You feel your path has taken&  a turn for the worse./^"
        actcon++
    }
    else if (actcon == 2)
    {
        global.msg[0] = "* You kept reflecting on&  your actions.../"
        global.msg[1] = "* Your hands go numb..^1.&* You feel a sense of grief&  wash over you./^"
        actcon++
    }
    else if (actcon > 0)
        global.msg[1] = "* But there isn't anything&  left to reflect on./^"
}
else if (actcon == 1)
{
    global.msg[0] = "* You thought back on how you've&  treated others.../"
    if (global.kills > 0)
        global.msg[1] = "* You start to feel bad.../^"
    else
        global.msg[1] = "* You start to love yourself&  a little more./^"
    actcon++
}
else
{
    global.msg[0] = "* You thought about the things&  you've done.../"
    global.msg[1] = "* ... but your mind draws&  a blank./^"
}
