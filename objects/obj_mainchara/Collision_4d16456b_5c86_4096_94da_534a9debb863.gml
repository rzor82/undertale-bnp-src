if (global.phasing == 0)
{
    if (global.facing == 1)
    {
        if (collision_point((bbox_right + 3), (bbox_bottom + 3), obj_solidparent, 0, 1) == -4)
        {
            x = (xprevious + 3)
            y = (yprevious + 3)
        }
        else
            x = xprevious
    }
    if (global.facing == 2)
    {
        if (collision_point((bbox_left - 3), (bbox_top - 3), obj_solidparent, 0, 1) == -4)
        {
            x = (xprevious - 3)
            y = (yprevious - 3)
        }
        else
            y = yprevious
    }
    if (global.facing == 0)
    {
        x = xprevious
        y = (yprevious + 3)
    }
    if (global.facing == 3)
    {
        y = yprevious
        x = (xprevious - 3)
    }
    if (obj_time.up && obj_time.right)
    {
        x = xprevious
        y = yprevious
    }
    if ((obj_mainchara.x % 3) != 0)
        x -= 1
    if ((y % 3) != 0)
        y += 1
    moving = false
    runtimer = 0
}
else if ((global.interact == 5 || global.interact == 1 || global.interact == 3) && global.phasing == 0)
{
    x = xprevious
    y = yprevious
}
