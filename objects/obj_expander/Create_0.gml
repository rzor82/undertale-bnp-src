attempt_enable = 0
attempt_disable = 0
expanded = 2
diffx = 0
diffy = 0
if (instance_number(object_index) > 1 || global.screen_border_id == 0)
{
    show_debug_message(((("Destroying excess " + object_get_name(object_index)) + " instance ") + string(id)))
    show_debug_message(("Instances remaining: " + string((instance_number(object_index) - 1))))
    show_debug_message(("Stack: " + string(debug_get_callstack())))
    instance_destroy(id, false)
    return;
}
else if (!window_has_focus())
{
    show_debug_message((((("Destroying " + object_get_name(object_index)) + " instance ") + string(id)) + " as the window is unfocused during creation"))
    instance_destroy(id, false)
    return;
}
else if (window_get_fullscreen() && room != room_gameover)
{
    window_set_fullscreen(false)
    alarm[0] = 1
}
else
{
    expanded = 0
    origx = __view_get(0, 0)
    origy = __view_get(1, 0)
    origwv = __view_get(2, 0)
    orighv = __view_get(3, 0)
    origws = global.origws
    orighs = global.orighs
    diffx = ((window_get_width() - __view_get(2, 0)) / 2)
    diffy = ((window_get_height() - __view_get(3, 0)) / 2)
    if (room != room_gameover)
        event_user(0)
}
