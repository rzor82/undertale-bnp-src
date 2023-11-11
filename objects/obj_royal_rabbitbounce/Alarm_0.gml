myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_royal_rabbitbounce_87")
global.msg[1] = scr_gettext("obj_royal_rabbitbounce_88")
global.msg[2] = scr_gettext("obj_royal_rabbitbounce_89")
if (tt == 1)
{
    if (day != 2 || day != 4)
    {
        global.msg[0] = scr_gettext("obj_royal_rabbitbounce_93")
        global.msg[1] = scr_gettext("obj_royal_rabbitbounce_94")
        global.msg[2] = scr_gettext("obj_royal_rabbitbounce_95")
        global.msg[3] = scr_gettext("obj_royal_rabbitbounce_96")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_royal_rabbitbounce_93")
        global.msg[1] = "* But^1, if you ask me..^1.&* You could probably go through*  that creepy lab over there./"
        global.msg[2] = "* Between you^1, me^1, and my& work mate here./"
        global.msg[3] = "* I wish it wasn't so awkward.../%%"
    }
}
if (tt >= 2)
{
    global.msg[0] = scr_gettext("obj_royal_rabbitbounce_101")
    global.msg[1] = scr_gettext("obj_royal_rabbitbounce_102")
}
if (room == room_fire_hotelfront_1)
{
    global.msg[0] = scr_gettext("obj_royal_rabbitbounce_107")
    global.msg[1] = scr_gettext("obj_royal_rabbitbounce_108")
    global.msg[2] = scr_gettext("obj_royal_rabbitbounce_109")
    if (tt >= 1)
        global.msg[0] = scr_gettext("obj_royal_rabbitbounce_113")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_royal_rabbitbounce_118")
        global.msg[1] = scr_gettext("obj_royal_rabbitbounce_119")
    }
}
tt += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
