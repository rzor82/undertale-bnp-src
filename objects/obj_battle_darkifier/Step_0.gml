if (darkify == 1)
{
    if (image_alpha < 0.5)
        image_alpha += 0.04
    else
        darkify = 2
}
if (darkify == 3)
{
    if (image_alpha > 0)
        image_alpha -= 0.04
    if (image_alpha <= 0)
    {
        darkify = 0
        if destroy
            instance_destroy()
    }
}
if (global.mnfight == 3)
    darkify = 3
if (global.mnfight == 2)
    darkify = 1
if (parent != noone)
{
    if (!instance_exists(parent))
        instance_destroy()
}
