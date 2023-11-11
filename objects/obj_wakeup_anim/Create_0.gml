if ((room == room_area1_room_of_fallen_stars && global.flag[19] == 1) || (room == room_water_trashzone1 && global.flag[19] == 2))
{
    global.flag[17] = 0
    instance_destroy()
    return;
}
if (global.flag[19] == 0)
    global.flag[158] = choose(0, 0, 0, 0, 1, 1, 1, 2, 2)
with (obj_mainchara)
{
    cutscene = true
    visible = false
}
instance_create(0, 0, obj_fader)
do_dialog = 0
timed_out = 0
key_alpha = 0
waiting = 0
dialog = -4
global.facing = 0
global.interact = 1
image_speed = 0
image_index = 0
alarm[4] = 40
orig_x = __view_get(0, 0)
orig_y = __view_get(1, 0)
orig_w = __view_get(2, 0)
orig_h = __view_get(3, 0)
w = (orig_w / 2)
h = (orig_h / 2)
__view_set(2, 0, w)
__view_set(3, 0, h)
aspect_ratio = (orig_w / orig_h)
centerx = (x + (sprite_width / 2))
centery = (y + (sprite_height / 2))
siner_inc = 0.0261799387799149
siner = 0
skip = false
con = -1
