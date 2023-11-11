myinteract = 0
image_xscale = 1
image_yscale = 1
image_speed = 0.1
if (room == room_ruins13 && x > 300 && x < 400)
{
}
if (room == room_ruins5)
{
    if (global.plot < 8.5 || global.kills > 0)
        instance_destroy()
}
if (room == room_ruins_sewer_tease)
{
    if (y > 400)
        sprite_index = spr_smallfrog_back
}
if (room == room_ruins_sewer_switchpuzz)
    sprite_index = spr_smallfrog_back
talkedto = 0
if (global.kills > 16)
    instance_destroy()
if (room == room_ruins17 && global.kills > 0)
    instance_destroy()
if (room == room_ruins7 && global.kills > 0)
    instance_destroy()
if (scr_murderlv() >= 2)
    instance_destroy()
