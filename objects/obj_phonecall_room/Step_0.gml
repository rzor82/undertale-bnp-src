if (room == room_fire8 && obj_mainchara.x < obj_bluelaser_o.x && global.flag[373] == 0)
{
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_phonecall_room_411")
    global.msg[1] = scr_gettext("obj_phonecall_room_412")
    global.msg[2] = "* H-how did you get&  over there?/"
    global.msg[3] = "\\E6* N-never mind^1, I'll&  just turn off the&  laser now./"
    global.msg[4] = scr_gettext("obj_phonecall_room_418")
    global.msg[5] = scr_gettext("obj_phonecall_room_419")
    if (global.flag[367] == 0)
    {
        with (obj_mainchara)
        {
            global.facing = 0
            cutscene = true
            if (scr_murderlv() < 1)
            {
                rsprite = spr_mainchara_call
                lsprite = spr_mainchara_call
                usprite = spr_mainchara_call
                dsprite = spr_mainchara_call
                global.interact = 1
                mydialoguer = instance_create(0, 0, obj_dialoguer)
                snd_play(snd_phone)
            }
        }
    }
    global.flag[373] = 1
    t = 1
}
if (t == 1 && instance_exists(OBJ_WRITER) == 0)
{
    if resume
        caster_resume(global.currentsong)
    exception = 0
    if (exception == 0)
        instance_destroy()
    global.interact = 0
    if (room == room_fire8)
    {
        snd_play(snd_switchpull_n)
        obj_bluelaser_o.active = 2
        instance_destroy()
    }
}
if (instance_exists(OBJ_WRITER) == 0)
{
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
}
