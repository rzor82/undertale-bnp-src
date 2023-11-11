if (instance_exists(obj_shaker) == 0)
{
    if (on == 1)
    {
        __view_set(0, 0, round(((obj_mainchara.x - (__view_get(2, 0) / 2)) + 10)))
        __view_set(1, 0, round(((obj_mainchara.y - (__view_get(3, 0) / 2)) + 10)))
        if (__view_get(1, 0) <= 0)
            __view_set(1, 0, 0)
    }
}
if (on == 1)
{
    x = (__view_get(0, 0) + stayx)
    y = (__view_get(1, 0) + stayy)
    if (__view_get(1, 0) <= 0)
        __view_set(1, 0, 0)
}
if (on == 0)
{
    gravity = 0.4
    image_angle += ang
    if (y > room_height)
        instance_destroy()
}
if (__view_get(1, 0) <= 0)
    __view_set(1, 0, 0)
