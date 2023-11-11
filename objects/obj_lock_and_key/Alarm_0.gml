myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_lock_and_key_66")
global.msg[1] = scr_gettext("obj_lock_and_key_67")
global.msg[2] = scr_gettext("obj_lock_and_key_68")
global.msg[3] = scr_gettext("obj_lock_and_key_69")
if (scr_murderlv() >= 16)
    global.msg[0] = scr_gettext("obj_lock_and_key_73")
if (global.flag[454] == 0.5)
{
    global.msg[0] = scr_gettext("obj_lock_and_key_78")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_lock_and_key_82")
}
if (global.flag[452] == 1 && global.flag[453] == 1)
{
    global.flag[454] = 1
    global.msg[0] = scr_gettext("obj_lock_and_key_90")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_lock_and_key_94")
    if (global.flag[449] < 3)
    {
        with (obj_speedrun_tracker)
        {
            if (global.flag[449] == 1)
            {
                magolor = 1
                geo = 1
            }
            else if (global.flag[450] == 1)
                magolor = 1
            if (global.flag[450] == 2 && global.flag[449] == 2)
                geo = 1
        }
    }
    con = 2
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
if (global.flag[454] == 0)
    global.flag[454] = 0.5
