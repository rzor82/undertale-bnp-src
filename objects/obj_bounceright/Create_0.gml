bounced = 0
btime = -1
con = 0
alarm[1] = 1
if (instance_exists(obj_bouncetilecontoller) == 0)
    instance_create(0, 0, obj_bouncetilecontoller)
event_user(0)
gold = 0
goldshift = 0
image_speed = 0.2
depth = 800000
special_spin = 0
if (scr_murderlv() < 2 && global.flag[221] == 0)
    special_spin = irandom(10)
