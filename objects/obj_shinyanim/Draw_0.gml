if (image_index < prev)
{
    instance_destroy()
    return;
}
draw_set_alpha(image_alpha)
draw_self()
draw_set_alpha(1)
prev = image_index
