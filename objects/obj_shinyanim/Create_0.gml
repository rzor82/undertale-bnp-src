var min_id = id
with (object_index)
    min_id = min(min_id, id)
if (id == min_id)
    snd_play(snd_sparkle1)
if instance_exists(obj_battlecontroller)
    obj_battlecontroller.shinied = 1
num_images = sprite_get_number(sprite_index)
image_speed = 1.25
image_alpha = 0.9
image_xscale = 4
image_yscale = 4
prev = 0
