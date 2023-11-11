myinteract = 3
global.msc = 0
global.typer = 126
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_muffetnpc2_75")
global.msg[1] = scr_gettext("obj_muffetnpc2_76")
if (global.flag[7] == 1)
{
    global.msg[0] = scr_gettext("obj_muffetnpc2_81")
    global.msg[1] = scr_gettext("obj_muffetnpc2_82")
    global.msg[2] = scr_gettext("obj_muffetnpc2_83")
    global.msg[3] = scr_gettext("obj_muffetnpc2_84")
    global.msg[4] = scr_gettext("obj_muffetnpc2_85")
    if (global.flag[59] >= 1)
        global.msg[3] = scr_gettext("obj_muffetnpc2_87")
    if (global.flag[59] >= 13)
        global.msg[3] = scr_gettext("obj_muffetnpc2_89")
    if (global.flag[59] >= 25)
        global.msg[3] = scr_gettext("obj_muffetnpc2_91")
    if (global.flag[59] >= 40)
        global.msg[3] = scr_gettext("obj_muffetnpc2_93")
    if (global.flag[59] >= 70)
        global.msg[3] = scr_gettext("obj_muffetnpc2_95")
    if (global.flag[59] >= 100)
    {
        global.msg[3] = scr_gettext("obj_muffetnpc2_99")
        global.msg[4] = scr_gettext("obj_muffetnpc2_100")
    }
    if (global.flag[59] >= 9000)
    {
        global.msg[3] = scr_gettext("obj_muffetnpc2_105")
        global.msg[4] = scr_gettext("obj_muffetnpc2_106")
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
