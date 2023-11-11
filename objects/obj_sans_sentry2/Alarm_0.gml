myinteract = 3
global.msc = 0
global.typer = 17
global.facechoice = 3
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_sans_sentry2_127")
if (global.flag[89] == 0)
    global.msc = 567
if (global.flag[89] == 2)
    global.msg[0] = scr_gettext("obj_sans_sentry2_134")
if (scr_murderlv() >= 7)
{
    global.faceemotion = 3
    global.msc = 0
    global.msg[0] = scr_gettext("obj_sans_sentry2_141")
    global.msg[1] = scr_gettext("obj_sans_sentry2_142")
}
if (global.flag[89] == 2 && global.flag[299] == 1 && global.entrance == 24)
{
    global.msg[0] = "* you came on a&  ferry just to see&  me^1?/"
    global.msg[1] = "\\E2* can't you see i'm&  busy?/"
    global.msg[2] = "\\E0* let's hang out some&  other time^1, okay?/%%"
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
