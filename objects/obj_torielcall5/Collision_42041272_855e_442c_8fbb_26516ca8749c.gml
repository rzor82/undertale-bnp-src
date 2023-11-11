if (global.interact == 0)
{
    touch = 1
    snd_play(snd_phone)
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_torielcall5_90")
    global.msg[1] = scr_gettext("obj_torielcall5_91")
    global.msg[2] = scr_gettext("obj_torielcall5_92")
    global.msg[3] = scr_gettext("obj_torielcall5_93")
    global.msg[4] = scr_gettext("obj_torielcall5_94")
    global.msg[5] = scr_gettext("obj_torielcall5_95")
    global.msg[6] = scr_gettext("obj_torielcall5_96")
    global.msg[7] = scr_gettext("obj_torielcall5_97")
    global.msg[8] = scr_gettext("obj_torielcall5_98")
    global.msg[9] = scr_gettext("obj_torielcall5_99")
    global.msg[10] = scr_gettext("obj_torielcall5_100")
    global.flag[128] = 4
    if (room == room_ruins1)
    {
        global.flag[121] = 1
        instance_create(150, 105, obj_stalkerflowey)
    }
    else
        instance_create(140, 200, obj_stalkerflowey)
    script_execute(scr_writetext, 0, "x", 0, 0)
    global.interact = 1
    callcon = 1
}
