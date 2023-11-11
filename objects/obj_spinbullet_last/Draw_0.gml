draw_sprite(sprite_index, image_index, x, y)
if (secrettrick == 1)
{
    depth = -1
    wht += 0.01
    draw_set_alpha(wht)
    draw_set_color(c_white)
    if instance_exists(obj_expander)
    {
        with (obj_expander)
            ossafe_fill_rectangle((-diffx), (-diffy), window_get_width(), window_get_height())
    }
    else
        ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_alpha(1)
}
