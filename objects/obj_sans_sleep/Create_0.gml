image_speed = 0.06
scr_depth()
snoozer = instance_create((x + (sprite_width / 2)), (y - 1), obj_snoozer)
if (global.plot > 121 || global.flag[67] == 1)
    instance_destroy()
else
    global.chapter = 4
