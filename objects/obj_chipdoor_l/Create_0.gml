myinteract = 0
did = 0
if (room == room_fire_core_roadblock)
{
    sprite_index = spr_chipdoorl_core_red
    if (global.flag[335] == 3)
        sprite_index = spr_chipdoorl_core_green
}
else
{
    sprite_index = spr_chipdoor_red
    if (global.flag[374] == 1 && room == room_fire7)
        sprite_index = spr_chipdoor_green
    if (global.flag[399] == 1 && room == room_fire_walkandbranch2)
        sprite_index = spr_chipdoor_green
}
mychip = instance_create((x + sprite_width), y, obj_npc_marker)
mychip.image_index = 0
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
{
    event_user(1)
    x -= 20
}
