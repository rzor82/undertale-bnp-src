myinteract = 0
image_xscale = 1
image_yscale = 1
var theroomname = room_get_name(room)
if (string_pos("ruins", theroomname) != 0)
    sprite_index = spr_npc_sign_ruins
if (string_pos("tundra", theroomname) != 0)
    sprite_index = spr_npc_sign_snowdin
if (string_pos("water", theroomname) != 0)
    sprite_index = spr_npc_sign_waterfall
if (string_pos("fire", theroomname) != 0)
    sprite_index = spr_npc_sign_hotland
if (string_pos("core", theroomname) != 0)
{
    if global.simplevfx
        sprite_index = spr_npc_sign_core
    else
    {
        sprite_index = spr_npc_sign_core_animated
        image_speed = 0.125
    }
    if (scr_murderlv() >= 12)
    {
        sprite_index = spr_npc_sign_core_animated
        image_speed = 0
        image_index = 2
    }
}
