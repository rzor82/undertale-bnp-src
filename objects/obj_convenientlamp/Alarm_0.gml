myinteract = 3
global.msc = 0
global.msg[0] = scr_gettext("obj_convenientlamp_55")
if (room == room_tundra_sanshouse)
{
    if instance_exists(obj_papyrusparent)
    {
        scr_papface(0, 0)
        global.msg[1] = "HEY^1, BE CAREFUL&AROUND THAT LAMP./"
        global.msg[2] = "IT TOOK ME AGES&TO WASH THE&CONVENIENCE OUT!/%%"
    }
    else
        global.msg[0] = "* (This lamp looks&  almost brand new.)/%%"
}
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
mydialoguer = instance_create(0, 0, obj_dialoguer)
