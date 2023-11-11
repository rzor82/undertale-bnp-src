scr_monsterdefeat()
if (mercymod > 10)
    global.goldreward[3] += 5
with (mypart1)
    instance_destroy()
if instance_exists(obj_troubleboy_hitch)
{
    if (killed == 0)
    {
        with (obj_troubleboy_hitch)
        {
            scr_monsterdefeat()
            with (mypart1)
                instance_destroy()
            if (mercymod > 10)
                global.goldreward[3] += 25
        }
    }
    else
    {
        with (obj_troubleboy_hitch)
        {
            x = 260
            y = 135
        }
    }
}
if (killed == 1)
    global.flag[129] = 1
