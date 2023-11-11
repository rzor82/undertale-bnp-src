if (expanded == 2)
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
    event_user(0)
    window_set_fullscreen(true)
}
