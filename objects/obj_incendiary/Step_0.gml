fatal += 1
if (fatal > 10 && global.turntimer > 1)
{
    image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
}
