if (expanded == 1)
{
    show_debug_message((((((((((((("Resizing back (" + string(origx)) + " ") + string(origy)) + " ") + string(origwv)) + " ") + string(orighv)) + " ") + string(origws)) + " ") + string(orighs)) + ")"))
    __view_set(0, 0, origx)
    __view_set(1, 0, origy)
    __view_set(2, 0, origwv)
    __view_set(3, 0, orighv)
    display_set_gui_size(-1, -1)
    surface_resize(application_surface, origws, orighs)
    expanded = 0
}
