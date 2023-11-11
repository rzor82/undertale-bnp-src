if (go == 1)
{
    if (global.interact != 5)
    {
        pos = obj_mainchara.x
        obj_mainchara.x += (2 + obj_mainchara.movemultiplier)
        with (obj_mainchara)
        {
            if place_meeting(x, y, obj_solidparent)
                x = other.pos
        }
    }
    go = 0
}
if (go == 2)
{
    if (global.interact != 5)
    {
        pos = obj_mainchara.x
        obj_mainchara.x += (6 + obj_mainchara.movemultiplier)
        with (obj_mainchara)
        {
            if place_meeting(x, y, obj_solidparent)
                x = other.pos
        }
    }
    go = 0
}
if altspeed
    image_speed = 2
else if (image_speed > 1)
    image_speed -= 0.05
else
    image_speed = 1
