if instance_exists(target)
{
    if (moved == 0)
    {
        x = target.x
        y = target.y
        dist = distance_to_point(movex, movey)
        dir = point_direction(x, y, movex, movey)
        amt = (dist / movemax)
        xadd = lengthdir_x(amt, dir)
        yadd = lengthdir_y(amt, dir)
        moved = 1
    }
    target.x += xadd
    target.y += yadd
    movetimer += 1
    if (movetimer >= movemax)
    {
        target.x = movex
        target.y = movey
        instance_destroy()
    }
    if (target == noone)
        instance_destroy()
}
else
    instance_destroy()
