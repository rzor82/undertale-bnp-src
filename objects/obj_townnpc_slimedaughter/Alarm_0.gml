myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_slimedaughter_80")
if (global.plot >= 122)
    global.msg[0] = scr_gettext("obj_townnpc_slimedaughter_84")
if (global.flag[7] == 1)
{
    global.msg[0] = scr_gettext("obj_townnpc_slimedaughter_89")
    global.msg[1] = scr_gettext("obj_townnpc_slimedaughter_90")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
