myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_dogfoodbag_57")
if (global.kills == 0)
    global.msg[0] = scr_gettext("obj_dogfoodbag_59")
if (global.kills > 20)
{
    if (global.flag[52] == 1 && global.flag[53] == 1 && global.flag[54] == 1 && global.flag[55] == 1)
    {
        global.msg[0] = scr_gettext("obj_dogfoodbag_63")
        global.msg[1] = scr_gettext("obj_dogfoodbag_64")
        global.msg[2] = scr_gettext("obj_dogfoodbag_65")
    }
}
if (global.plot < 126 && scr_murderlv() < 12)
    global.msg[0] = scr_gettext("obj_dogfoodbag_68")
mydialoguer = instance_create(0, 0, obj_dialoguer)
if (instance_exists(obj_alphystrigger1) && (obj_alphystrigger1.con == 1 || obj_alphystrigger1.con == 2))
{
    with (obj_speedrun_tracker)
        lab_skip = 2
}
