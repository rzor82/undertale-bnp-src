if (ex == 0)
{
    if (atimer == 0)
        aaa += 0.03
    if (atimer == 1)
        aaa -= 0.03
}
if (ex == 1)
{
    if (atimer == 0)
        aaa += 0.015
    if (atimer == 1)
        aaa -= 0.015
}
if (ex == 2)
{
    if (atimer == 0)
        aaa += 0.0075
    if (atimer == 1)
        aaa -= 0.0075
}
if (aaa <= -0.03)
    instance_destroy()
if (aaa >= 1.2)
{
    aaa = 1
    atimer = 1
}
if do_blank
{
    draw_set_alpha(1)
    draw_set_color(c_black)
    if instance_exists(obj_expander)
    {
        with (obj_expander)
            ossafe_fill_rectangle((-diffx), (-diffy), window_get_width(), window_get_height())
    }
    else
        ossafe_fill_rectangle(-10, -10, 999, 999)
}
draw_set_alpha(aaa)
draw_set_color(c_white)
if (instance_exists(obj_expander) || force_full == 1)
{
    with (obj_borderdrawer)
    {
        border = 3.5
        color = 16777215
        alpha = other.aaa
    }
}
if instance_exists(obj_expander)
{
    with (obj_expander)
        ossafe_fill_rectangle((-diffx), (-diffy), window_get_width(), window_get_height())
}
else
    ossafe_fill_rectangle(-10, -10, 999, 999)
draw_set_alpha(1)
