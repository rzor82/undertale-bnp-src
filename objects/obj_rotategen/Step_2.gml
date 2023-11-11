if (global.turntimer < 0)
{
    speed = 0
    if (image_alpha > 0.1)
        image_alpha -= 0.2
    else
    {
        global.turntimer = -1
        global.mnfight = 3
        image_alpha = 0
        instance_destroy()
    }
}
