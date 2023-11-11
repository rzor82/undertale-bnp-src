if (con == 1)
{
    con = 2
    alarm[4] = 30
    snd_play(snd_phone)
}
if (con == 3 && instance_exists(OBJ_WRITER) == 0)
{
    with (obj_mainchara)
    {
        cutscene = true
        global.facing = 0
        if (scr_murderlv() < 1)
        {
            rsprite = spr_mainchara_call
            lsprite = spr_mainchara_call
            usprite = spr_mainchara_call
            dsprite = spr_mainchara_call
        }
    }
    global.facechoice = 0
    global.faceemotion = 0
    caster_pause(global.currentsong)
    snd_play(snd_phone)
    global.msc = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_otherphonecall_100")
    instance_create(0, 0, obj_dialoguer)
    con = 4
}
if (con == 4 && instance_exists(OBJ_WRITER) == 0)
{
    con = 5
    alarm[4] = 2
}
if (con == 6 && instance_exists(OBJ_WRITER) == 0)
{
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_wrongnumbersong_97")
    global.msg[1] = scr_gettext("obj_wrongnumbersong_98")
    global.msg[2] = scr_gettext("obj_wrongnumbersong_99")
    instance_create(0, 0, obj_dialoguer)
    con = 7
}
if (con == 7 && instance_exists(OBJ_WRITER) == 0)
{
    con = 8
    alarm[4] = 2
}
if (con == 9 && instance_exists(OBJ_WRITER) == 0)
{
    wrns = caster_loop(mus_wrongnumbersong, 0.8, 1)
    global.msg[0] = scr_gettext("obj_wrongnumbersong_107")
    global.msg[1] = scr_gettext("obj_wrongnumbersong_108")
    global.msg[2] = scr_gettext("obj_wrongnumbersong_109")
    global.msg[3] = scr_gettext("obj_wrongnumbersong_110")
    instance_create(0, 0, obj_dialoguer)
    con = 10
}
if (con == 10 && instance_exists(OBJ_WRITER) == 0)
{
    con = 11
    alarm[4] = 2
}
if (con == 12 && instance_exists(OBJ_WRITER) == 0)
{
    caster_stop(wrns)
    global.typer = 5
    global.msg[0] = scr_gettext("obj_wrongnumbersong_118")
    instance_create(0, 0, obj_dialoguer)
    con = 13
}
if (con == 13 && instance_exists(OBJ_WRITER) == 0)
{
    with (obj_mainchara)
    {
        cutscene = false
        global.facing = 0
        if (scr_murderlv() < 1)
        {
            rsprite = spr_maincharar
            lsprite = spr_maincharal
            usprite = spr_maincharau
            dsprite = spr_maincharad
        }
    }
    caster_resume(global.currentsong)
    con = 10
    global.flag[277] = 1
    global.interact = 0
    instance_destroy()
}
