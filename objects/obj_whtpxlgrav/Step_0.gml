if (image_blend != c_white)
    initcol = image_blend
col = merge_color(initcol, c_white, amount)
if (amount < 1)
{
    if (y != ybegin)
        amount += 0.05
    else
        amount += 0.0005
}
image_blend = col
if (destroytime == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.005
    else
        instance_destroy()
}
