if instance_exists(obj_mainchara)
{
    if (obj_mainchara.cutscene == true)
    {
        o = obj_mainchara
        if (obj_mainchara.x >= 450)
            __view_set(9, 0, -4)
        if (obj_mainchara.x < 450)
        {
            __view_set(9, 0, 1584)
            __view_set(0, 0, round(((o.x - (__view_get(2, 0) / 2)) + (o.sprite_width / 2))))
            __view_set(1, 0, round(((o.y - (__view_get(3, 0) / 2)) + (o.sprite_height / 2))))
        }
    }
}
