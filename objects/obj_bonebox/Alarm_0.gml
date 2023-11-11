myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if instance_exists(obj_papyrusparent)
{
    scr_papface(0, 0)
    global.msg[1] = scr_gettext("obj_bonebox_63")
    global.msg[2] = scr_gettext("obj_bonebox_64")
    global.msg[3] = scr_gettext("obj_bonebox_65")
    global.msg[4] = scr_gettext("obj_bonebox_66")
    if (global.flag[290] == 1)
    {
        global.msg[1] = scr_gettext("obj_bonebox_70")
        global.msg[2] = scr_gettext("obj_bonebox_71")
        global.msg[3] = scr_gettext("obj_bonebox_72")
        global.msg[4] = scr_gettext("obj_bonebox_73")
        global.msg[5] = scr_gettext("obj_bonebox_74")
        global.msg[6] = scr_gettext("obj_bonebox_75")
        global.msg[7] = scr_gettext("obj_bonebox_76")
        global.msg[8] = scr_gettext("obj_bonebox_77")
    }
    if (read > 0)
        global.msg[0] = scr_gettext("obj_bonebox_81")
}
else
    global.msg[0] = scr_gettext("obj_bonebox_85")
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
