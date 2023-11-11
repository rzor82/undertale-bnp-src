if (off == 1 && image_alpha < 1)
    image_alpha += 0.02
if (obj_questionasker.phase > 2 || obj_questionasker.phase < 1)
{
    if hit
    {
        with (obj_questionasker)
            q = 8
    }
    off = 2
}
if (off == 2 && image_alpha > 0)
{
    image_alpha -= 0.05
    if (image_alpha <= 0.05)
        instance_destroy()
}
