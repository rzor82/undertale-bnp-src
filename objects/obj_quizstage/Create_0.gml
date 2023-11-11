image_xscale = 2
image_yscale = 2
image_speed = 0
if (!instance_exists(obj_battlebg))
    instance_create(0, 0, obj_battlebg)
depth = (obj_battlebg.depth - 1)
x = ((room_width - sprite_width) / 2)
slow = 0
