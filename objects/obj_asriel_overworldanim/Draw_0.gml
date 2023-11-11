draw_sprite_ext(sprite_index, floor(image_index), x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
if (con == 11 || con == 12)
{
    whited += 0.01
    if (whited >= 1 && con == 11)
    {
        con = 12
        __view_set(0, 0, 0)
        __view_set(1, 0, 0)
    }
    draw_set_alpha(whited)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-100, -100, window_get_width(), window_get_height())
    with (obj_borderdrawer)
    {
        color = 16777215
        border = 3.5
        alpha = other.whited
    }
    draw_set_alpha(1)
    if (whited >= 2)
    {
        instance_create(0, 0, obj_barriercut)
        con = 13
        with (obj_mhd)
            instance_destroy()
        alarm[5] = -1
    }
}
