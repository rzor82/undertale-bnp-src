myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_darksausagenpc_72")
if (room == room_fire_core2)
{
    global.msg[0] = scr_gettext("obj_darksausagenpc_76")
    global.msg[1] = scr_gettext("obj_darksausagenpc_77")
    global.msg[2] = scr_gettext("obj_darksausagenpc_78")
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* With the barrier opened up^1,&  we can finally leave&  the underground./"
        global.msg[1] = "* Once we've all moved out^1,&  it'll be even harder&  to find this room./"
        global.msg[2] = "* Perhaps it's time to&  find a new special place./%%"
    }
}
if (room == room_fire_core3)
{
    global.msg[0] = scr_gettext("obj_darksausagenpc_83")
    global.msg[1] = scr_gettext("obj_darksausagenpc_84")
    global.msg[2] = scr_gettext("obj_darksausagenpc_85")
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* On the surface^1,&  I can finally live&  out my dream./"
        global.msg[1] = "* Climbing Mount Ebott..^1.&* What a thrill that will be./"
        global.msg[2] = "* No more mercenary&  work for me^1, that's&  for sure./%%"
    }
}
if (room == room_fire_core_freebattle)
{
    global.msg[0] = scr_gettext("obj_darksausagenpc_90")
    global.msg[1] = scr_gettext("obj_darksausagenpc_91")
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* The&  barrier&  opened...?/"
        global.msg[1] = "* Fare well^1,&  underground&  prison./%%"
    }
}
if (room == room_fire_core_warrior)
{
    global.msg[0] = scr_gettext("obj_darksausagenpc_96")
    if (current_month > 9 || (current_month == 9 && current_day >= 15))
        global.msg[1] = (("* Well..^1.&* That angle is so&  " + string((current_year - 2015))) + " years ago./%%")
    if (current_month <= 8)
        global.msg[1] = (("* Well..^1.&* That angle is so&  " + string((current_year - 2016))) + " years ago./%%")
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* I'll have to try out&  all kinds of angles&  on the overworld./"
        global.msg[1] = "* I've heard humans are&  very picky about&  how us Monsters look./%%"
    }
}
if (room == room_fire_core_center)
{
    global.msg[0] = scr_gettext("obj_darksausagenpc_102")
    global.msg[1] = scr_gettext("obj_darksausagenpc_103")
    global.msg[2] = scr_gettext("obj_darksausagenpc_104")
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* Before you came here^1,&  we were all trapped&  down here./"
        global.msg[1] = "* Now^1, the barrier is&  broken^1, and we have&  you to thank for that./"
        global.msg[2] = "* Thank you^1, human^1.&* You really are special./%%"
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
