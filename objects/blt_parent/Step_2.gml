if (global.turntimer < 1)
{
    speed = 0
    if (image_alpha > 0.1)
        image_alpha -= 0.2
    else
    {
        if (global.mnfight == 2)
            global.mnfight = 3
        image_alpha = 0
        instance_destroy()
    }
}
else if (global.turntimer < -100)
{
    if (global.mnfight == 2)
        global.mnfight = 3
    image_alpha = 0
    instance_destroy()
}
