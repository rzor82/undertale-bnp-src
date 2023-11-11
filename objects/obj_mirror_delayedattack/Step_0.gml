if active
{
    timer++
    image_alpha = (1 - (timer / 15))
    if (timer >= 10)
        instance_destroy()
}
