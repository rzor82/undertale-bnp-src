myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (global.flag[55] == 0)
{
    if (global.plot < 67)
    {
        global.msg[0] = scr_gettext("obj_dogroom_npc_74")
        global.msg[1] = scr_gettext("obj_dogroom_npc_75")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_dogroom_npc_79")
        global.msg[1] = scr_gettext("obj_dogroom_npc_80")
        global.msg[2] = scr_gettext("obj_dogroom_npc_81")
        global.msg[3] = scr_gettext("obj_dogroom_npc_82")
    }
}
if (global.flag[55] == 2)
{
    global.msg[0] = scr_gettext("obj_dogroom_npc_87")
    global.msg[1] = scr_gettext("obj_dogroom_npc_88")
    global.msg[2] = scr_gettext("obj_dogroom_npc_89")
    global.msg[3] = scr_gettext("obj_dogroom_npc_90")
    global.msg[4] = scr_gettext("obj_dogroom_npc_91")
}
if (global.flag[7] == 1)
{
    global.msg[0] = scr_gettext("obj_dogroom_npc_96")
    global.msg[1] = scr_gettext("obj_dogroom_npc_97")
    global.msg[2] = scr_gettext("obj_dogroom_npc_98")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
