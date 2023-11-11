if custom
    draw_self()
else
{
    if instance_exists(obj_expander)
    {
        x = __view_get(0, 0)
        y = __view_get(1, 0)
    }
    else
    {
        x = 0
        y = 0
    }
    draw_sprite_ext(sprite_index, image_index, x, y, window_get_width(), window_get_height(), 0, color, image_alpha)
}
