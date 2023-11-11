if active
{
    if instance_exists(obj_dialoguer)
    {
        with (obj_dialoguer)
            other.depth = depth
    }
    else
    {
        with (obj_overworldcontroller)
            other.depth = (depth + 1)
    }
    siner += siner_inc
    alpha = (sin(siner) * max_alpha)
    if (alpha <= 0)
    {
        alarm[0] = 35
        active = false
        alpha = 0
    }
    draw_set_alpha(alpha)
    draw_set_color(c_red)
    draw_rectangle(__view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)), false)
}
draw_set_alpha(1)
