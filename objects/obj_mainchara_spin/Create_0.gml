target_facing = global.facing
if (target_facing % 2)
    target_facing = ((target_facing + 2) % 4)
image_index = (target_facing * 4)
image_speed = 0
spin_time = 20
airtime = 0
follow = 1
mode = 0
chop = 0
real_index = image_index
