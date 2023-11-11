myinteract = 3
global.msc = 226
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (global.flag[7] == 1)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_nicesnowman_107")
    global.msg[1] = scr_gettext("obj_nicesnowman_108")
    global.msg[2] = scr_gettext("obj_nicesnowman_109")
    scr_itemcheck(16)
    scr_storagecheck(16)
    if (global.flag[56] == 1 || global.flag[56] == 2)
    {
        global.msg[0] = scr_gettext("obj_nicesnowman_120")
        global.msg[1] = scr_gettext("obj_nicesnowman_121")
        global.msg[2] = scr_gettext("obj_nicesnowman_122")
        global.msg[3] = scr_gettext("obj_nicesnowman_123")
        global.msg[4] = scr_gettext("obj_nicesnowman_124")
        global.msg[5] = scr_gettext("obj_nicesnowman_125")
    }
    if (global.flag[56] == 1 || global.flag[56] == 2)
    {
        if (haveit == false)
        {
            if (haveit2 == 0)
            {
                global.msg[0] = scr_gettext("obj_nicesnowman_133")
                global.msg[1] = scr_gettext("obj_nicesnowman_134")
                global.msg[2] = scr_gettext("obj_nicesnowman_135")
            }
        }
    }
    if (global.flag[56] == 4 || global.flag[56] == 5)
    {
        global.msg[0] = scr_gettext("obj_nicesnowman_140")
        global.msg[1] = scr_gettext("obj_nicesnowman_141")
        global.msg[2] = scr_gettext("obj_nicesnowman_142")
        global.msg[3] = scr_gettext("obj_nicesnowman_143")
    }
}
if (scr_murderlv() >= 2)
{
    global.msc = 0
    noroom = 0
    if (global.flag[253] <= 2)
        scr_itemget(16)
    if (noroom == 1)
        global.msg[0] = scr_gettext("obj_nicesnowman_155")
    else
    {
        if (global.flag[253] == 0)
        {
            global.msg[0] = scr_gettext("obj_nicesnowman_161")
            global.msg[1] = scr_gettext("obj_nicesnowman_162")
            global.msg[2] = scr_gettext("obj_nicesnowman_163")
        }
        if (global.flag[253] == 1)
        {
            global.msg[0] = scr_gettext("obj_nicesnowman_167")
            global.msg[1] = scr_gettext("obj_nicesnowman_168")
            global.msg[2] = scr_gettext("obj_nicesnowman_169")
        }
        if (global.flag[253] == 2)
        {
            global.msg[0] = scr_gettext("obj_nicesnowman_173")
            global.msg[1] = scr_gettext("obj_nicesnowman_174")
        }
        if (global.flag[253] >= 3)
            global.msg[0] = scr_gettext("obj_nicesnowman_177")
        dt = 1
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
