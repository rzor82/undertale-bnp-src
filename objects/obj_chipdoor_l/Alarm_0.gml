myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_chipdoor_l_78")
if (sprite_index == spr_chipdoor_green || sprite_index == spr_chipdoorr_core_green)
    global.msg[0] = scr_gettext("obj_chipdoor_l_79")
if (global.plot > 132 && room == room_fire7)
    global.msg[0] = scr_gettext("obj_chipdoor_l_82")
if (global.plot > 163 && room == room_fire_walkandbranch2)
    global.msg[0] = scr_gettext("obj_chipdoor_l_87")
if (room == room_fire_elevator_l1 && global.plot < 190)
    global.msg[0] = "* (The door is locked.)&* (Maybe if you come back later^1,&  it'll be unlocked.)/%%"
if (global.flag[384] == 2 || global.flag[298] == 1)
    global.msg[0] = scr_gettext("obj_chipdoor_l_87")
mydialoguer = instance_create(0, 0, obj_dialoguer)
