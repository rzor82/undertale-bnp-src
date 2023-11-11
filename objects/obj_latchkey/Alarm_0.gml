myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_latchkey_71")
if (scr_havebox() == 0)
{
    global.msg[0] = "* (You took the key and&  put it in your pocket.)/%%"
    if (scr_murderlv() >= 16)
        global.msg[0] = "* Picked up the key./%%"
}
if (room == room_ruins_sewer_trouble)
{
    global.msg[0] = "* (You took the key and&  put it in your pocket.)/%%"
    if (global.flag[39] == 0 && instance_exists(obj_troubleboy_event))
    {
        with (obj_troubleboy_event)
            con = 1
        obj_mainchara.uncan = 1
        global.msg[0] = "* (You took the key and%%"
    }
    else
        global.flag[116] = 1
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
if (room == room_kitchen_final)
    global.flag[452] = 1
if (room == room_asghouse3)
    global.flag[453] = 1
