if (__view_get(1, 0) <= 0)
{
    image_alpha = 0
    oalpha = 0
}
if (__view_get(1, 0) > 0)
{
    a = (oalpha - ((top / __view_get(1, 0)) * oalpha))
    if (a > 0)
        image_alpha = a
    else
        image_alpha = 0
}
