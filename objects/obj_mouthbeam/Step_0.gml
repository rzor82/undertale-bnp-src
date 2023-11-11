x = ((nowx + random(3)) - random(3))
y = ((nowy + random(3)) - random(3))
if (factor == 1)
    visible = true
factor += 1
if (factor > 20)
{
    image_alpha -= 0.1
    if (image_alpha < 0.2)
    {
        instance_destroy()
        obj_floweyx_flipeye.con = 6
    }
}
if ((!instance_exists(obj_vsflowey_shaker)) && obj_flowey_master.destroyer < 4)
{
    s = instance_create(0, 0, obj_vsflowey_shaker)
    with (s)
    {
        if (obj_flowey_master.destroyercon > 0)
        {
            special = 3
            myx = window_get_x()
            myy = window_get_y()
        }
    }
}
