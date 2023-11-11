image_angle += aa
if (h_mode == 1)
    direction += 1.5
if instance_exists(obj_expander)
{
    if (x < (-obj_expander.diffx) || y < (-obj_expander.diffy) || x > window_get_width() || y > window_get_height())
        instance_destroy()
}
