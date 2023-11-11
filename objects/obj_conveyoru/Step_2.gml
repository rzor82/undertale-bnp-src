if (go == 1)
{
    if (global.interact != 5)
    {
        pos = obj_mainchara.y
        obj_mainchara.y -= (2 + obj_mainchara.movemultiplier)
        with (obj_mainchara)
        {
            if place_meeting(x, y, obj_solidparent)
                y = other.pos
        }
    }
    go = 0
}
if (go == 2)
{
    if (global.interact != 5)
    {
        pos = obj_mainchara.y
        obj_mainchara.y -= (6 + obj_mainchara.movemultiplier)
        with (obj_mainchara)
        {
            if place_meeting(x, y, obj_solidparent)
                y = other.pos
        }
    }
    go = 0
}
