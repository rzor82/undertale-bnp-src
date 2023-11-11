global.turntimer = 999
if (con == 0)
{
    with (boss)
        scr_afterimage()
    travel = 1
}
else if (con == 1)
{
    alarm[4] = 30
    con = 2
}
else if (con == 3)
{
    alarm[0] = 1
    con = 4
}
else if (con == 4)
{
    var h = (global.idealborder[3] - height)
    with (blt_sweatdrop)
    {
        if ((y + (sprite_height / 2)) >= h)
        {
            h -= other.fillamt
            other.height += other.fillamt
            instance_destroy()
        }
    }
    if (((h - global.idealborder[2]) - 5) <= 20)
    {
        alarm[0] = -1
        with (blt_sweatdrop)
            instance_destroy()
        boss.flashphase = 1
        destx = startx
        desty = starty
        startx = boss.x
        starty = boss.y
        global.border = 0
        visible = false
        travel = 1
        siner = 0
        con = 5
    }
}
else if (con == 6 && boss.flashphase == 0)
{
    boss.timer = 0
    boss.shielded = 1
    boss.shieldanimspeed = 0.05
    boss.shieldhp = boss.shieldmaxhp
    global.turntimer = 1
    instance_destroy()
}
with (obj_borderparent)
    depth = (other.depth - 1)
with (obj_heart)
    depth = (other.depth + 1)
if (con != prevcon)
{
    show_debug_message(((string(prevcon) + " -> ") + string(con)))
    prevcon = con
}
