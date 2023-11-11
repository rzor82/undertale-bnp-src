if (image_alpha < 1)
{
    image_alpha += 0.12
    direction += increase
    increase -= 2
}
else
{
    fade = scr_afterimage_new()
    fade.fadeSpeed = 0.12
    image_alpha = 1
}
image_angle = direction
