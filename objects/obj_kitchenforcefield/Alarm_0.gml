if (canttalk == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_kitchenforcefield_128")
    if (room == room_fire_cookingshow)
        global.msg[0] = scr_gettext("obj_kitchenforcefield_123")
    if (room == room_tundra_xoxopuzz)
    {
        global.msg[0] = "* (A conveniently placed&  magical forcefield blocks&  your path.)/"
        global.msg[1] = "* (How inconsiderate.)/%%"
    }
    if (room == room_fire_newsreport)
        global.msg[0] = scr_gettext("obj_kitchenforcefield_124")
    if (room == room_fire10)
        global.msg[0] = scr_gettext("obj_kitchenforcefield_125")
    if (room == room_fire_core4 || room == room_fire_core_right || room == room_fire2)
        global.msg[0] = scr_gettext("obj_kitchenforcefield_126")
    if (room == room_fire_core_topright || room == room_fire_core_premett)
        global.msg[0] = "* (The bridge is blocked&  by a forcefield.)/%%"
    if (room == room_fire_core_laserfun)
        global.msg[0] = scr_gettext("obj_kitchenforcefield_127")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    myinteract = 3
}
else
{
    global.interact = 0
    myinteract = 0
}
