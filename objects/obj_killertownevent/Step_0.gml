if (con == 1)
{
    if (__view_get(0, 0) >= (x + (sprite_width / 2)))
    {
        if obj_mainchara.running
            con = 3
        else
        {
            alarm[4] = 3
            con = 2
        }
    }
    else
    {
        var tick = 0
        with (obj_fearundynenpc1)
        {
            if ((x + (sprite_width / 4)) < (__view_get(0, 0) + __view_get(2, 0)))
                tick = 1
        }
        with (obj_fearundynenpc2)
        {
            if ((x + (sprite_width / 4)) < (__view_get(0, 0) + __view_get(2, 0)))
                tick = 1
        }
        if tick
            flee_timer -= 1
        if (flee_timer < 1)
        {
            alarm[4] = -1
            con = 3
        }
    }
}
else if (con == 3)
{
    if (global.plot < 99)
        global.plot = 99
    snd_play(snd_escaped)
    with (obj_fearundynenpc1)
        hspeed = (10 + (obj_mainchara.running * 2))
    with (obj_fearundynenpc2)
        hspeed = (10 + (obj_mainchara.running * 2))
    alarm[4] = 30
    con = 4
}
else if (con == 5)
{
    if (global.plot < 99)
        global.plot = 99
    with (obj_fearundynenpc1)
        instance_destroy()
    with (obj_fearundynenpc2)
        instance_destroy()
    instance_destroy()
}
