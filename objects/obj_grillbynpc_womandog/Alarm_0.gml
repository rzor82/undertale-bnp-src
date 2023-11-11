myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_grillbynpc_womandog_76")
global.msg[1] = scr_gettext("obj_grillbynpc_womandog_77")
global.msg[2] = scr_gettext("obj_grillbynpc_womandog_78")
if (talkedto > 0)
    global.msg[0] = "* (Bone, bone...)/%%"
if (global.flag[67] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_womandog_81")
if (global.plot >= 122)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_womandog_86")
    global.msg[1] = scr_gettext("obj_grillbynpc_womandog_87")
}
if (sansmode == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_womandog_92")
    global.msg[1] = scr_gettext("obj_grillbynpc_womandog_93")
}
if (global.flag[52] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_womandog_97")
if (global.flag[52] == 1 && global.flag[54] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_womandog_99")
if (global.flag[7] == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_womandog_105")
    global.msg[1] = scr_gettext("obj_grillbynpc_womandog_106")
    if (talkedto > 0)
        global.msg[0] = "* (Maybe we'll host a&  big family picnic where&  us dogs pet each other...)/%%"
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
