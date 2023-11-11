if (dr < 0.5)
    dr += 0.1
if (global.turntimer < 6)
    dr -= 0.2
draw_set_alpha(dr)
draw_set_color(c_black)
if instance_exists(obj_expander)
{
    with (obj_expander)
        ossafe_fill_rectangle((-diffx), (-diffy), window_get_width(), window_get_height())
}
else
    ossafe_fill_rectangle(-10, -10, 999, 999)
draw_set_alpha(1)
if (global.turntimer <= 0)
    instance_destroy()
