gone = 0
sprite_index = spr_conveyorbelt_r
siner = 0
mydir = 0
go = 0
xfer = 0
altspeed = 0
if (room == room_fire_rpuzzle)
    altspeed = 1
if (room == room_fire10 && instance_exists(obj_triswitchevent))
    altspeed = 1
if altspeed
    image_speed = 2
else
    image_speed = 1
