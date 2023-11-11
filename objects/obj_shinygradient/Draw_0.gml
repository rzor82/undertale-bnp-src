if (writer != noone && (!instance_exists(writer)))
{
    instance_destroy()
    return;
}
if (!surface_exists(surface))
{
    surface = surface_create((width * 3), 35)
    surface_set_target(surface)
    draw_rectangle_color(0, 0, width, 35, start, stop, stop, start, 0)
    draw_rectangle_color(width, 0, (width * 2), 35, stop, start, start, stop, 0)
    draw_rectangle_color((width * 2), 0, (width * 3), 35, start, stop, stop, start, 0)
    surface_reset_target()
}
draw_set_alpha(0)
draw_set_blend_mode_ext(bm_src_alpha, bm_src_color)
draw_surface_part(surface, offset, 0, width, 35, x, y)
draw_set_blend_mode(bm_normal)
draw_set_alpha(1)
offset += 2
if (offset >= (width * 2))
    offset -= (width * 2)
