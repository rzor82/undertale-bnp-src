myinteract = 3
global.msc = 0
global.msg[0] = scr_gettext("obj_hearthflame_57")
if (room == room_tundra_teenhangoutroom)
{
    global.msg[0] = "* (There are the remains of many&  dropped roasted marshmallows&  in this fire pit.)/"
    global.msg[1] = "* (You politely pay your&  respects to the fallen.)/%%"
    if (scr_murderlv() > 0)
        global.msg[0] = "* (There are the remains of many&  dropped roasted marshmallows&  in this fire pit.)/%%"
    if (scr_murderlv() > 7)
        global.msg[0] = "* (Oddly^1, there are several&  more marshmallows than&  there were before.)/%%"
}
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
mydialoguer = instance_create(0, 0, obj_dialoguer)
