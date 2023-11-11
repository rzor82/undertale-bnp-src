var roomname = room_get_name(global.currentroom)
if (string_pos("tundra", roomname) != 0)
{
    sprite_index = spr_shadowman_coffee
    instance_create(0, 0, obj_shadowcam)
}
if (string_pos("fire", roomname) != 0)
{
    sprite_index = spr_shadowman_tea
    if (global.plot > 197)
        instance_destroy()
}
event_inherited()
image_speed = 0
image_index = 0
talkedto = 0
TESTED = 0
