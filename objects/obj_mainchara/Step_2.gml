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
if (global.interact == 0)
    movement = 1
else
{
    moving = false
    movement = 0
}
if (abs((xprevious - x)) > 0.01 || abs((yprevious - y)) > 0.01)
    moving = true
if (moving == false)
{
    image_speed = 0
    if (running == 1)
    {
        if (image_index >= 1 && image_index < 4)
        {
            image_index = 3
            run_index = 3
        }
        else
        {
            image_index = 0
            run_index = 0
        }
    }
    else if (image_index >= 1 && image_index < 3)
    {
        image_index = 2
        run_index = 3
    }
    else
    {
        image_index = 0
        run_index = 0
    }
}
if (global.interact == 0)
{
    if (moving == true)
        global.encounter += (scr_murderlv() > 0 ? 1 : movemultiplier)
}
if (stuck == true)
{
    x = xprevious
    y = yprevious
}
if (cutscene == false)
{
    if (instance_exists(obj_shaker) == 0)
    {
        __view_set(0, 0, round(((x - (__view_get(2, 0) / 2)) + 10)))
        __view_set(1, 0, round(((y - (__view_get(3, 0) / 2)) + 10)))
    }
}
with (obj_backgrounder_parent)
    event_user(0)
