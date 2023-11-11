myinteract = 3
global.msc = 0
global.msg[0] = scr_gettext("obj_readable_sign2_55")
global.msg[1] = scr_gettext("obj_readable_sign2_56")
if (room == room_ruinsexit)
{
    global.msg[0] = "* (The text on this sign looks&  faded and is barely legible...)/"
    global.msg[1] = "* Up ahead: Snowdin Fores^1t&* Once you leave^1, you won't&  be able to return./%%"
}
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
mydialoguer = instance_create(0, 0, obj_dialoguer)
