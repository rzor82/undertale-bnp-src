d = 0
housesprite = scr_marker(30, -24, spr_undynehouse_normal)
with (housesprite)
    depth = 950000
door = scr_marker(130, 40, spr_undynehousemouth)
with (door)
    depth = 900000
with (door)
    image_speed = 0
if (global.flag[389] >= 2)
{
    with (housesprite)
        sprite_index = spr_undynehouse_fire
    with (housesprite)
        image_speed = 0.2
    with (door)
        visible = false
}
if (global.flag[354] == 2 && global.flag[67] == 0 && global.flag[88] >= 3 && global.flag[389] <= 2)
{
    papyrus = instance_create(140, 80, obj_papyrus_room)
    with (papyrus)
        sprite_index = spr_papyrus_dt
}
if (global.plot < 122)
    d = 1
if (global.flag[354] < 2)
    d = 1
if (global.flag[67] == 1)
    d = 1
if (global.flag[88] < 4)
    d = 1
if (global.flag[350] == 1)
    d = 1
if (global.flag[350] == 2)
    d = 1
if (global.flag[389] >= 2)
    d = 1
if (global.kills > 0)
    d = 1
if (d == 1)
{
    instance_destroy()
    return;
}
if (d == 0)
{
    global.flag[20] = 0
    global.currentsong = caster_load("music/undynepiano.ogg")
    caster_loop(global.currentsong, 0.8, 0.8)
    with (obj_knock_room)
        instance_destroy()
}
con = 0
