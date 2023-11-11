if (con == -1 && (x + sprite_width) < 0)
    instance_destroy()
else
{
    if (con == 0)
    {
        if (x < 230)
        {
            hspeed = movespeed
            vspeed = 0
        }
        else
            con = 1
    }
    if (con == 1)
    {
        if (y > 30)
        {
            hspeed = 0
            vspeed = (-movespeed)
        }
        else
            con = 2
    }
    if (con == 2)
    {
        if (x > 105)
        {
            hspeed = (-movespeed)
            vspeed = 0
        }
        else
            con = 3
    }
    if (con == 3)
    {
        if (y < 80)
        {
            vspeed = movespeed
            hspeed = 0
        }
        else
            con = 4
    }
    if (con == 4)
    {
        if (x < 230)
        {
            hspeed = movespeed
            vspeed = 0.25
        }
        else
            instance_destroy()
    }
}
scr_npcdirspeed()
scr_depth()
depth += 50
