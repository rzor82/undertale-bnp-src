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
    if (type == 1)
    {
        global.typer = 17
        global.msc = 900
    }
    if (type == 2)
    {
        global.typer = 47
        global.msg[0] = scr_gettext("obj_otherphonecall_115")
        global.msg[1] = scr_gettext("obj_otherphonecall_116")
        global.msg[2] = scr_gettext("obj_otherphonecall_117")
        global.msg[3] = scr_gettext("obj_otherphonecall_118")
        global.msg[4] = scr_gettext("obj_otherphonecall_119")
        global.msg[5] = scr_gettext("obj_otherphonecall_120")
        global.msg[6] = scr_gettext("obj_otherphonecall_121")
        global.msg[7] = scr_gettext("obj_otherphonecall_122")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 7
}
if (con == 7 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_otherphonecall_133")
    instance_create(0, 0, obj_dialoguer)
    con = 8
}
if (con == 8 && instance_exists(OBJ_WRITER) == 0)
{
    caster_resume(global.currentsong)
    con = 9
    global.flag[277] = 1
    global.interact = 0
    with (obj_mainchara)
    {
        cutscene = false
        if (scr_murderlv() < 1)
        {
            rsprite = spr_maincharar
            lsprite = spr_maincharal
            usprite = spr_maincharau
            dsprite = spr_maincharad
        }
    }
    instance_destroy()
}
