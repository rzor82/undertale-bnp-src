myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (global.flag[261] == 0)
{
    global.msg[0] = scr_gettext("obj_iceroom_fakedog_64")
    global.msg[1] = scr_gettext("obj_iceroom_fakedog_65")
    global.flag[261] = 1
    sprite_index = spr_tobdog_pile
}
else
    global.msg[0] = scr_gettext("obj_iceroom_fakedog_71")
mydialoguer = instance_create(0, 0, obj_dialoguer)
