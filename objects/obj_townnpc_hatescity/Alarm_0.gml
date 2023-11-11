myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_hatescity_70")
global.msg[1] = scr_gettext("obj_townnpc_hatescity_71")
global.msg[2] = scr_gettext("obj_townnpc_hatescity_72")
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_townnpc_hatescity_73")
if (global.plot > 121)
{
    global.msg[0] = scr_gettext("obj_townnpc_hatescity_77")
    global.msg[1] = scr_gettext("obj_townnpc_hatescity_78")
}
if (room == room_tundra_town)
{
    global.msg[0] = "* City punks^1, I tell ya^1./"
    global.msg[1] = "* One of them kicked&  me out of my seat&  just now./"
    global.msg[2] = "* She's a fierce one^1,&  that's for sure!/"
    global.msg[3] = "* Guess we're not too&  different after all./"
    global.msg[4] = "* ...nah^1, still not&  enough room for 'em./%%"
}
if (scr_deaddog() == 1 || global.flag[67] == 1)
{
    global.msg[0] = scr_gettext("obj_townnpc_hatescity_91")
    global.msg[1] = scr_gettext("obj_townnpc_hatescity_92")
}
if (global.flag[7] == 1)
{
    global.msg[0] = scr_gettext("obj_townnpc_hatescity_83")
    global.msg[1] = scr_gettext("obj_townnpc_hatescity_84")
    global.msg[2] = scr_gettext("obj_townnpc_hatescity_85")
    global.msg[3] = scr_gettext("obj_townnpc_hatescity_86")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
