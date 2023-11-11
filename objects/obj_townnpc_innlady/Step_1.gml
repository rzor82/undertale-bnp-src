script_execute(scr_depth, 0, 0, 0, 0, 0)
script_execute(scr_npc_anim)
if (conversation == 2 && instance_exists(OBJ_WRITER) == 0)
{
    global.interact = 1
    instance_create(0, 0, obj_unfader)
    alarm[5] = 20
    m = instance_create(0, 0, obj_musfadeout)
    m.fadespeed = 0.05
    conversation = 3
}
if (conversation == 6)
{
    global.interact = 1
    global.facing = 1
    global.msc = 0
    global.msg[0] = scr_gettext("obj_townnpc_innlady_199")
    global.msg[1] = scr_gettext("obj_townnpc_innlady_200")
    if (global.flag[72] == 1)
        global.msg[2] = scr_gettext("obj_townnpc_innlady_203")
    else if (global.flag[72] == 2)
        global.msg[2] = scr_gettext("obj_townnpc_innlady_207")
    else
        global.msg[2] = "%%"
    instance_create(0, 0, obj_dialoguer)
    conversation = 7
}
if (conversation == 7 && instance_exists(OBJ_WRITER) == 0)
{
    global.facing = 0
    conversation = 0
    global.interact = 0
    myinteract = 0
    global.flag[73] = 0
}
