myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_clamgirl_74")
global.msg[1] = scr_gettext("obj_clamgirl_75")
global.msg[2] = scr_gettext("obj_clamgirl_76")
global.msg[3] = scr_gettext("obj_clamgirl_77")
if (talkedto > 0)
{
    global.msg[0] = scr_gettext("obj_clamgirl_81")
    global.msg[1] = scr_gettext("obj_clamgirl_82")
}
if (global.flag[7] == 0)
    global.flag[279] = 1
if (global.flag[350] == 1)
{
    global.msg[0] = scr_gettext("obj_clamgirl_93")
    global.msg[1] = scr_gettext("obj_clamgirl_94")
}
if (global.flag[7] == 1)
{
    if (global.flag[279] == 1)
    {
        global.msg[0] = scr_gettext("obj_clamgirl_102")
        global.msg[1] = scr_gettext("obj_clamgirl_103")
        global.msg[2] = scr_gettext("obj_clamgirl_104")
        global.msg[3] = scr_gettext("obj_clamgirl_105")
        if (global.flag[5] == 81 || global.debug == true)
        {
            global.msg[1] = scr_gettext("obj_clamgirl_106")
            gcon = 1
        }
    }
    if (global.flag[279] == 0)
    {
        global.msg[0] = scr_gettext("obj_clamgirl_110")
        global.msg[1] = scr_gettext("obj_clamgirl_111")
        global.msg[2] = scr_gettext("obj_clamgirl_112")
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
