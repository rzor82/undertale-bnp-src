myinteract = 3
global.msc = 0
global.typer = 28
global.facechoice = 0
global.faceemotion = 0
if (global.flag[269] == 1)
    global.msg[0] = scr_gettext("obj_judgeshroom_91")
else
{
    global.msg[0] = scr_gettext("obj_judgeshroom_95")
    global.msg[1] = scr_gettext("obj_judgeshroom_96")
    global.msg[2] = scr_gettext("obj_judgeshroom_97")
    con = 2
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
