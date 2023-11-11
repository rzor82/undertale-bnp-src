if (obj_time.left == 0)
{
    if (obj_time.right == 0)
    {
        if (obj_time.down == 0)
        {
            if (obj_time.up == 0)
                moving = false
        }
    }
}
if (global.interact > 0)
{
    moving = false
    movement = 0
}
else
    movement = 1
if (xprevious != x || yprevious != y)
    moving = true
if (moving == false)
{
    image_speed = 0
    image_index = 0
}
if (cutscene == false)
{
    if (instance_exists(obj_vsflowey_shaker) == 0)
    {
        __view_set(0, 0, round(((x - (__view_get(2, 0) / 2)) + 10)))
        __view_set(1, 0, round(((y - (__view_get(3, 0) / 2)) + 10)))
    }
}
