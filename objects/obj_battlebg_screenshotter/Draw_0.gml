if (room != room_battle && room != created_room)
{
    instance_destroy()
    return;
}
if (room == created_room && (!surface_exists(surface)) && (!sprite_exists(ss)))
{
    if (drew == 2)
        view_set_camera(2, camera_create_view(0, 100, 320, 240))
    surface = surface_create(320, 240)
    view_surface_id[2] = surface
    clear_menu = 1
    active = true
    drew = 0
}
if (active && view_current == 2 && drew < 2 && (!instance_exists(obj_persistentfader)))
{
    if drew
    {
        show_debug_message("Took screenshot")
        camera_destroy(view_camera[2])
        __view_set(10, 2, 0)
        view_set_camera(2, -1)
        if clear_menu
            global.flag[17] = 0
        clear_menu = 0
        active = false
        drew = 2
    }
    else
    {
        if (global.interact == 5)
        {
            if (global.menuno == 9)
            {
                with (obj_dialoguer)
                {
                    with (writer)
                        instance_destroy()
                    instance_destroy()
                }
            }
            global.interact = 0
            global.flag[17] = 1
            clear_menu = 1
        }
        drew = 1
    }
}
else if (global.debug == true && room != room_battle && surface_exists(surface) && view_current == 0 && global.flag[18] == 0)
    draw_surface_ext(surface, __view_get(0, 0), __view_get(1, 0), 0.25, 0.25, 0, c_white, 1)
