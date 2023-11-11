myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_grillbynpc_mandog_75")
global.msg[1] = scr_gettext("obj_grillbynpc_mandog_76")
if (talkedto > 0)
    global.msg[0] = "* Or^1, maybe you&  DON'T want to watch&  where you sit.../%%"
if (global.flag[67] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_80")
if (global.plot >= 122)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_85")
    global.msg[1] = scr_gettext("obj_grillbynpc_mandog_86")
}
if (sansmode == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_91")
    global.msg[1] = scr_gettext("obj_grillbynpc_mandog_92")
}
if (global.flag[54] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_96")
if (global.flag[52] == 1 && global.flag[54] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_mandog_98")
if (global.flag[7] == 1)
{
    global.msg[0] = "* Since we dogs were told&  about what happened to&  our family members.../"
    global.msg[1] = "* Those big guys have&  been doing a lot of&  catching up./"
    global.msg[2] = "* We didn't get to&  finish our card game^1,&  though.../%%"
    if (talkedto > 0)
        global.msg[0] = "* I hope they let&  dogs play poker on&  the surface./%%"
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
