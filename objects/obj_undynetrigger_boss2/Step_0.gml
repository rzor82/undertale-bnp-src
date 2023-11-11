if (con == 1)
{
    undyne = scr_marker(150, (__view_get(1, 0) - 230), spr_undynedive)
    undyne.image_speed = 0.334
    global.typer = 37
    global.msc = 0
    global.facechoice = 5
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_undynetrigger_boss2_99")
    global.msg[1] = scr_gettext("obj_undynetrigger_boss2_100")
    if (global.flag[352] == 1)
        global.msg[0] = scr_gettext("obj_undynetrigger_boss2_103")
    instance_create(0, 0, obj_dialoguer)
    obj_dialoguer.side = 1
    con = 2
}
if (con > 2 && con < 5)
{
    with (undyne)
    {
        vspeed = 8
        fade = scr_afterimage_new()
        fade.fadeSpeed = 0.2
    }
}
if (con == 2 && instance_exists(OBJ_WRITER) == 0)
{
    caster_free(-3)
    global.currentsong = caster_load("music/undynefast.ogg")
    alarm[4] = 35
    snd_play(snd_grab)
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_undynetrigger_boss2_116")
    instance_create(0, 0, obj_dialoguer)
    obj_dialoguer.side = 1
    con = 3
}
if (con == 4)
{
    with (obj_savepoint)
        instance_destroy()
    with (OBJ_WRITER)
        instance_destroy()
    with (obj_dialoguer)
        instance_destroy()
    con = 5
    global.border = 12
    global.battlegroup = 47
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    talkedto = 0
    alarm[4] = 2
}
if (con == 5)
{
    with (obj_doorA)
    {
        if (touched == true)
        {
            with (obj_speedrun_tracker)
            {
                if (global.interact == 0 || global.interact == 5)
                {
                    if instance_exists(obj_undynetrigger_boss)
                        undyne_skip = 1
                    else
                        undyne_skip = 3
                }
                else if (instance_exists(obj_undynetrigger_boss) && global.interact == 3)
                    undyne_skip = 2
            }
        }
    }
}
if (con == 6)
{
    with (undyne)
        instance_destroy()
    if (global.flag[350] == 0)
    {
        u = instance_create(160, 620, obj_undynea_chaser)
        alarm[4] = 30
        con = 7
    }
    else
    {
        global.flag[17] = 0
        global.plot = 122
    }
}
if (con == 8)
{
    if (global.flag[350] == 0)
        caster_loop(global.currentsong, 1, 1)
    else
        audio_stop_all()
    global.flag[352] = 1
    instance_destroy()
}
