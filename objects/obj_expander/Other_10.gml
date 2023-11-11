if (expanded == 0)
{
    show_debug_message((((((((("Resizing (" + string((-diffx))) + " ") + string((-diffy))) + " ") + string(window_get_width())) + " ") + string(window_get_height())) + ")"))
    __view_set(0, 0, (-diffx))
    __view_set(1, 0, (-diffy))
    __view_set(2, 0, window_get_width())
    __view_set(3, 0, window_get_height())
    display_set_gui_size(window_get_width(), window_get_height())
    surface_resize(application_surface, window_get_width(), window_get_height())
    expanded = 1
}
