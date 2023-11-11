myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_sanscheckpoint_98")
if (room == room_tundra_snowpuzz)
{
    if special
    {
        global.msg[1] = "* (Someone's face is clearly&  imprinted on the counter.)/"
        global.msg[2] = "* (It appears Sans has&  competition.)/%%"
    }
    else
        global.msg[0] += "%%"
}
else
    global.msg[1] = scr_gettext("obj_sanscheckpoint_99")
mydialoguer = instance_create(0, 0, obj_dialoguer)
