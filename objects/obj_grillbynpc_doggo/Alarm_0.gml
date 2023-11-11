myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_grillbynpc_doggo_74")
global.msg[1] = scr_gettext("obj_grillbynpc_doggo_75")
if (global.plot >= 122)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_doggo_79")
    global.msg[1] = scr_gettext("obj_grillbynpc_doggo_80")
    global.msg[2] = scr_gettext("obj_grillbynpc_doggo_81")
}
if (global.flag[67] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_doggo_86")
if (global.flag[350] == 1)
    global.msg[0] = scr_gettext("obj_grillbynpc_doggo_91")
if (sansmode == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_doggo_96")
    global.msg[1] = scr_gettext("obj_grillbynpc_doggo_97")
}
if (global.flag[53] == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_doggo_101")
    global.msg[1] = scr_gettext("obj_grillbynpc_doggo_102")
}
if (global.flag[53] == 1 && global.flag[54] == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_doggo_104")
    global.msg[1] = scr_gettext("obj_grillbynpc_doggo_105")
    global.msg[2] = scr_gettext("obj_grillbynpc_doggo_106")
}
if (global.flag[7] == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_doggo_110")
    global.msg[1] = scr_gettext("obj_grillbynpc_doggo_111")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
