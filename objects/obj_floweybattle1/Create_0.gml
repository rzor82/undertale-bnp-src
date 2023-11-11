floweysong = global.currentsong
obj_battlebg.image_index = 8
global.inbattle = 1
image_xscale = 2
image_yscale = 2
image_speed = 0
global.border = 3
conversation = 0
alarm[0] = 10
global.faceemotion = 0
script_execute(SCR_BORDERSETUP, 0, 0, 0, 0, 0)
towink = 0
toevil = 0
ossafe_ini_open("undertale.ini")
g = ini_read_real("Flowey", "Met1", 0)
ossafe_ini_close()
if (g > 1)
    sprite_index = spr_floweynice
alt = 0
