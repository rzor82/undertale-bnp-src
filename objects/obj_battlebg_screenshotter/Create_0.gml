surface = -4
drew = 0
ss = -4
if (instance_number(object_index) > 1)
{
    instance_destroy()
    return;
}
created_room = room
clear_menu = 0
active = true
view_set_camera(2, camera_create_view(0, 100, 320, 240))
surface = surface_create(320, 240)
view_surface_id[2] = surface
__view_set(10, 2, (active && drew < 2))
viewy = __view_get(0, 0)
viewx = __view_get(1, 0)
if (room == room_water_undynefinal)
{
    viewy = 100
    viewx = 0
}
else if (room == room_water_mirror)
{
    viewx = 510
    viewy = 0
}
else if (room == room_icecave1)
{
    viewx = 0
    viewy = 0
}
else if (room == room_fire_core_mettmeetingplace)
{
    viewx = 0
    viewy = 620
    active = false
}
show_debug_message("Created screenshotter")
