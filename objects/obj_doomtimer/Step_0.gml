if (dx < 120)
    doomtime += 1
if (dx < 90)
    doomtime += 0.3
if (dx > 100)
    doomtime -= 0.3
if (dx > 110)
    doomtime -= 0.5
if (dx >= 120 && instance_exists(obj_battlebomb))
{
    if (obj_battlebomb.defuse == 0 && obj_battlebomb.mypart1.got == 0 && dr == 0)
    {
        dr = 1
        global.flag[288] = 1
        obj_battlebomb_body.type = 99
        obj_battlebomb_body.bombtype = 99
        obj_battlebomb_body.speed = 0
        obj_battlebomb.failure = 1
        obj_battlebomb.con = 1001
    }
}
if (dx >= 120 && global.inbattle == 0 && global.interact == 0)
{
    finaltimer += 1
    if (finaltimer > 5)
    {
        with (obj_mettnewsevent)
            failure = 1
        with (obj_mettnewsevent)
            con = 160
        instance_destroy()
    }
}
if (__view_get(1, 0) <= 0)
    __view_set(1, 0, 0)
