myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (scr_murderlv() >= 1)
    global.msg[0] = "\\R* Just more snow./%%"
else if (tt == 0)
    global.msg[0] = scr_gettext("obj_snowpoff_100")
else if (tt == 1)
    global.msg[0] = scr_gettext("obj_snowpoff_101")
else if (tt == 2)
    global.msg[0] = scr_gettext("obj_snowpoff_102")
else if (tt == 3)
    global.msg[0] = scr_gettext("obj_snowpoff_103")
else if (tt == 4)
    global.msg[0] = scr_gettext("obj_snowpoff_104")
else if (tt == 5)
    global.msg[0] = scr_gettext("obj_snowpoff_105")
else if (tt == 6)
    global.msg[0] = scr_gettext("obj_snowpoff_106")
else if (tt >= 7 && global.flag[65] == 1)
{
    global.msg[0] = scr_gettext("obj_snowpoff_107")
    tt = 0
}
else if (tt >= 7 && global.flag[65] == 0)
{
    global.msg[0] = scr_gettext("obj_snowpoff_108")
    global.gold += 30
    tt = 0
    global.flag[65] = 1
}
gg = tt
obj_snowpoff.tt = (tt + 1)
tt = gg
mydialoguer = instance_create(0, 0, obj_dialoguer)
