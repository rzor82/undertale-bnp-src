if (global.debug == true)
{
    if keyboard_check_pressed(ord("U"))
        turns -= 1
    if keyboard_check_pressed(ord("I"))
        turns += 1
}
if (trcon >= 3)
{
    if instance_exists(obj_screenwhiter)
        depth = (obj_screenwhiter.depth + 2)
    draw_set_color(c_black)
    if instance_exists(obj_expander)
    {
        with (obj_expander)
            ossafe_fill_rectangle((-diffx), (-diffy), window_get_width(), window_get_height())
    }
    else
        ossafe_fill_rectangle(-100, -100, 999, 999)
}
