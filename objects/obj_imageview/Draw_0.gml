if (view_current != 0)
    return;
draw_sprite_ext(sprite_index, image_index, __view_get(0, 0), __view_get(1, 0), 1, 1, 0, image_blend, image_alpha)
if (buffer == 1 && control_check_pressed(1) == 1)
    buffer = 2
if (buffer == 1 && control_check_pressed(0) == 1)
    buffer = 2
global.interact = 1
if instance_exists(obj_dialoguer)
{
    global.lastpce = (("Text Storage (" + room_get_name(room)) + ")")
    image_blend = c_lime
}
if (buffer == 2)
{
    global.interact = 0
    instance_destroy()
}
