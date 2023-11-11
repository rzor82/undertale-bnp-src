if (view_current == 0)
{
    if surf_draw
    {
        if surface_exists(surface)
            draw_surface_ext(surface, x, y, scale, scale, 0, image_blend, image_alpha)
        else
            surface = surface_create(w, h)
    }
    draw_set_color(c_aqua)
    if (altglow == 0)
        altglow = 1
    else
        altglow = 0
    if (altglow == 0)
        draw_set_alpha(0.1)
    else
        draw_set_alpha(0.3)
    ossafe_fill_rectangle(x, y, (x + 59), (y + 39))
    draw_set_alpha(1)
    draw_sprite(spr_bigmonitor, 0, x, y)
}
