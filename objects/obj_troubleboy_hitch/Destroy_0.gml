scr_monsterdefeat()
if (mercymod > 10)
    global.goldreward[3] += 25
with (mypart1)
    instance_destroy()
if (killed == 0 && instance_exists(obj_troubleboy_portabie))
{
    with (obj_troubleboy_portabie)
    {
        scr_monsterdefeat()
        with (mypart1)
            instance_destroy()
        if (mercymod > 10)
            global.goldreward[3] += 5
    }
}
if (killed == 1)
    global.flag[129] = 1
