myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_paphouse_entrance_91")
if (global.flag[88] > 1)
    global.msg[0] = scr_gettext("obj_paphouse_entrance_103")
else if (global.flag[88] == 1)
{
    scr_papface(0, 0)
    if (global.flag[66] == 1)
        global.msg[1] = scr_gettext("obj_paphouse_entrance_96")
    if (global.flag[66] == 0)
        global.msg[1] = scr_gettext("obj_paphouse_entrance_97")
    global.msg[2] = scr_gettext("obj_paphouse_entrance_98")
    global.msg[3] = scr_gettext("obj_paphouse_entrance_99")
}
else
    global.msg[0] = scr_gettext("obj_paphouse_entrance_91")
mydialoguer = instance_create(0, 0, obj_dialoguer)
