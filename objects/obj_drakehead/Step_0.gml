if instance_exists(obj_chilldrake)
{
    if (global.monsterhp[obj_chilldrake.myself] < 20)
    {
        image_speed = 0.08
        if (down == 1)
        {
            y += (a / 3)
            a += 0.05
            if (a >= 1)
                down = 0
        }
        if (down == 0)
        {
            y += (a / 3)
            a -= 0.05
            if (a <= -1)
                down = 1
        }
    }
    else
    {
        if (down == 1)
        {
            y += (a / 2)
            a += 0.05
            if (a >= 1)
                down = 0
        }
        if (down == 0)
        {
            y += (a / 2)
            a -= 0.05
            if (a <= -1)
                down = 1
        }
    }
}
else if instance_exists(obj_snowdrake)
{
    if (global.monsterhp[obj_snowdrake.myself] < 20)
    {
        image_speed = 0.08
        if (down == 1)
        {
            y += (a / 3)
            a += 0.05
            if (a >= 1)
                down = 0
        }
        if (down == 0)
        {
            y += (a / 3)
            a -= 0.05
            if (a <= -1)
                down = 1
        }
    }
    else
    {
        if (down == 1)
        {
            y += (a / 2)
            a += 0.05
            if (a >= 1)
                down = 0
        }
        if (down == 0)
        {
            y += (a / 2)
            a -= 0.05
            if (a <= -1)
                down = 1
        }
    }
}
