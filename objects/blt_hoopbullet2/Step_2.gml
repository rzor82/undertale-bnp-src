if (global.turntimer < 1)
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
else if (image_alpha < 0.9)
    image_alpha += 0.1
else
{
    image_alpha = 1
    intangible = 0
}
