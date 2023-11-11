if (__view_get(0, 0) > 0)
{
    a = (oalpha - (__view_get(0, 0) / top))
    if (a > 0)
        image_alpha = a
    else
        image_alpha = 0
}
