if active
{
    if (con == 1)
    {
        camy = round(((remy - (__view_get(3, 0) / 2)) + 10))
        __view_set(0, 0, round(((obj_mainchara.x - (__view_get(2, 0) / 2)) + 10)))
        if (yy > -1 && __view_get(1, 0) > yy)
        {
            desty = round(((obj_mainchara.y - (__view_get(3, 0) / 2)) + 10))
            global.interact = 1
            con = 2
        }
        else if (yy < 0)
            yy = camy
    }
    else if (con == 2)
    {
        if (__view_get(1, 0) < desty)
        {
            __view_set(1, 0, (__view_get(1, 0) + 3))
            global.interact = 1
        }
        else
        {
            obj_mainchara.cutscene = false
            global.interact = 0
            con = 3
        }
    }
    if (obj_mainchara.y < threshold)
    {
        obj_mainchara.cutscene = false
        active = false
        yy = -1
        con = 0
    }
}
