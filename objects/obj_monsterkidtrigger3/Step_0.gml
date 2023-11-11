if (con == 1)
{
    global.facechoice = "A"
    global.typer = 5
    global.msc = 0
    with (mkid)
        facing[target] = 0
    if (global.flag[90] == 3)
        global.msg[0] = scr_gettext("obj_monsterkidtrigger3_134")
    if (global.flag[90] == 2)
    {
        if (global.flag[85] == 0)
        {
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_140")
            global.msg[1] = scr_gettext("obj_monsterkidtrigger3_141")
            global.flag[90] = 3
        }
        if (global.flag[85] == 1)
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_146")
    }
    if (global.flag[90] == 1)
    {
        if (global.flag[85] == 0)
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_154")
        if (global.flag[85] == 1)
        {
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_158")
            global.msg[1] = scr_gettext("obj_monsterkidtrigger3_159")
            global.flag[90] = 2
        }
    }
    if (global.flag[90] == 0)
    {
        if (global.flag[85] == 1)
        {
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_167")
            global.msg[1] = scr_gettext("obj_monsterkidtrigger3_168")
            global.flag[90] = 2
        }
        if (global.flag[85] == 0)
        {
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_173")
            global.msg[1] = scr_gettext("obj_monsterkidtrigger3_174")
            global.flag[90] = 1
        }
    }
    instance_create(0, 0, obj_dialoguer)
    con = 2
}
if (con == 2)
{
    if (instance_exists(OBJ_WRITER) && global.interact == 0)
    {
        with (obj_speedrun_tracker)
            mkid1 = max(mkid1, (1 + global.pca))
    }
    else if (!instance_exists(OBJ_WRITER))
    {
        with (mkid)
            follow = 1
        global.interact = 1
        con = 3
        alarm[4] = 30
    }
}
if (con == 4)
{
    if instance_exists(mkid)
    {
        global.msc = 0
        with (mkid)
            facing[target] = 1
        global.facechoice = "A"
        global.typer = 5
        global.msg[0] = scr_gettext("obj_monsterkidtrigger3_201")
        global.typer = 5
        global.interact = 1
        instance_create(0, 0, obj_dialoguer)
        con = 5
    }
}
if (instance_exists(OBJ_WRITER) == 0 && con == 5)
{
    if (scr_murderlv() < 7)
    {
        snd_play(snd_mkidjingle)
        global.facechoice = 0
        global.typer = 5
        global.msg[0] = "* (Monster Kid joined you!)/%%"
        if (global.flag[514] == 1)
            global.msg[0] = "* (Monster Kid joined you!^9)&* (Again!)/%%"
        global.typer = 5
        global.interact = 1
        global.flag[514] = 1
        instance_create(0, 0, obj_dialoguer)
    }
    con = 6
}
if (instance_exists(OBJ_WRITER) == 0 && con == 6)
{
    con = 7
    trophy_unlock("rain")
    global.interact = 0
    with (mkid)
        follow = 0
    x = 60
}
if (con == 8 && instance_exists(OBJ_WRITER) == 0)
{
    con = 9
    with (mkid)
    {
        follow = 0
        hspeed = 6
        facing[target] = 1
    }
    alarm[4] = 40
}
if (con == 9)
{
    with (mkid)
        walktimer += 1
}
if (con == 10)
{
    with (mkid)
        instance_destroy()
    global.interact = 0
    t = instance_create(xstart, ystart, obj_monsterkidtrigger3)
    t.numero = 2
    instance_destroy()
}
