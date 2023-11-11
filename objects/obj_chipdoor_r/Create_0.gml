myinteract = 0
did = 0
if (room == room_fire_core_roadblock)
{
    sprite_index = spr_chipdoorr_core_red
    if (global.flag[335] == 3)
        sprite_index = spr_chipdoorr_core_green
    x += sprite_width
}
else
{
    sprite_index = spr_chipdoor_red
    if (global.flag[375] == 1 && room == room_fire7)
        sprite_index = spr_chipdoor_green
    if (global.flag[400] == 1 && room == room_fire_walkandbranch2)
        sprite_index = spr_chipdoor_green
    image_xscale = -1
    x -= sprite_width
}
mychip = instance_create((x - 6), y, obj_npc_marker)
mychip.image_index = 1
mychip.depth = (depth + 1)
mychip.sprite_index = spr_chipdoor_chippart
mychip.image_speed = 0
mychip.visible = room != room_fire_core_roadblock
image_speed = 0.2
if (global.plot > 132 && room == room_fire7)
    did = 1
if (global.plot > 163 && room == room_fire_walkandbranch2)
    did = 1
if (global.flag[384] == 2 && room != room_fire_core_roadblock)
    did = 1
if (did == 1)
    x += 20
