if instance_exists(obj_time)
{
    var scale = (__view_get(2, view_current) / 640)
    if (obj_time.quit > 0)
        draw_sprite_ext(sprite_index, image_index, __view_get(0, view_current), __view_get(1, view_current), scale, scale, 0, c_white, image_alpha)
    else
        instance_destroy()
}
else
    instance_destroy()
if (image_alpha < 0.9)
    image_alpha += 0.1
