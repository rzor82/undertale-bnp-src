myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_smalldoghouse_98")
if (global.plot >= 64)
    global.msg[0] = scr_gettext("obj_smalldoghouse_99")
mydialoguer = instance_create(0, 0, obj_dialoguer)