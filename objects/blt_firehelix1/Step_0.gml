hspeed = (sin((obj_time.time / 10)) * 4)
if (r == 0)
    hspeed = ((-(sin((obj_time.time / 10)))) * 4)
h += 1
if (global.turntimer < 0)
{
    speed = 0
    if (image_alpha > 0.1)
        image_alpha -= 0.2
    else
    {
        global.mnfight = 3
        image_alpha = 0
        instance_destroy()
    }
}
