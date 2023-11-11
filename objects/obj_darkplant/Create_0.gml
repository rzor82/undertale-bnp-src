myinteract = 0
var theroomname = room_get_name(room)
if (string_pos("lab", theroomname) == 0)
    sprite_index = spr_plant_light
image_xscale = 1
image_yscale = 1
image_speed = 0
talkedto = 0
scr_depth()
