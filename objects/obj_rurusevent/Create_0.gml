shooter_tile = layer_get_id("ShooterTiles")
layer_set_visible(shooter_tile, 0)
if (global.flag[367] == 1 || global.flag[415] > 0)
{
    instance_destroy()
    return;
}
start_hp = global.hp
x = (((__view_get(0, 0) + __view_get(2, 0)) - sprite_width) / 2)
wall_visual = -4
image_speed = 0
debug_draw = 1
first_fail = 1
marker = -4
laser = -4
wall = -4
remx = x
show = 0
con = 0
giga_num = 1
giga_a = -4
giga_b = -4
special = false
if (global.flag[17] == 1 && (global.flag[5] < 51 || global.flag[5] > 55))
{
    with (obj_phonecall_room)
        instance_destroy()
    obj_mainchara.y -= 10
    global.interact = 1
    alarm[4] = 3
    special = true
}
fled = 0
