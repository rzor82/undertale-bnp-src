if (global.interact == 0)
{
    snd_play(snd_phone)
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_torielcall3_88")
    global.msg[1] = scr_gettext("obj_torielcall3_89")
    global.msg[2] = scr_gettext("obj_torielcall3_90")
    if (global.flag[46] == 0)
        global.msg[3] = scr_gettext("obj_torielcall3_91")
    if (global.flag[46] == 1)
        global.msg[3] = scr_gettext("obj_torielcall3_92")
    global.msg[4] = scr_gettext("obj_torielcall3_93")
    global.msg[5] = scr_gettext("obj_torielcall3_94")
    global.msg[6] = scr_gettext("obj_torielcall3_95")
    global.msg[7] = scr_gettext("obj_torielcall3_96")
    global.msg[8] = scr_gettext("obj_torielcall3_97")
    global.msg[9] = scr_gettext("obj_torielcall3_98")
    if (global.flag[6] == 1)
    {
        global.msg[3] = scr_gettext("obj_torielcall5_107")
        global.msg[4] = scr_gettext("obj_torielcall5_108")
        global.msg[5] = scr_gettext("obj_torielcall5_109")
        global.msg[6] = scr_gettext("obj_torielcall5_110")
        global.msg[7] = scr_gettext("obj_torielcall5_111")
        global.msg[8] = scr_gettext("obj_torielcall5_112")
        global.msg[9] = scr_gettext("obj_torielcall5_113")
    }
    script_execute(scr_writetext, 0, "x", 0, 0)
    global.interact = 1
    global.flag[128] = 2
    callcon = 1
}
