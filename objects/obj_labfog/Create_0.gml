xx = 0
yy = 0
xxspeed = 0.5
yyspeed = 0.25
image_alpha = 0.4
sprite_index = spr_labfog
if (room == room_truelab_fan)
    image_alpha = 0.6
if (room == room_truelab_cooler)
    image_alpha = 1
if (global.flag[490] == 1)
    image_alpha = 0
if instance_exists(obj_overworldcontroller)
    depth = (obj_overworldcontroller.depth + 1)
if instance_exists(obj_dialoguer)
    depth = (obj_dialoguer.depth + 1)
