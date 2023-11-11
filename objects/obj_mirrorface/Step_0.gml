if (stage == 0)
{
    image_alpha += 0.05
    if (image_alpha >= 1)
    {
        alarm[0] = 10
        stage = 1
    }
}
else if (stage == 2)
{
    image_alpha -= 0.05
    if (image_alpha <= 0)
        instance_destroy()
}
if focus
{
    if hearttarget
    {
        centerx = (obj_heart.x + 8)
        centery = (obj_heart.y + 8)
    }
    else
    {
        centerx = (global.idealborder[0] + (c_borderwidth(1) / 2))
        centery = (global.idealborder[2] + (c_borderheight(1) / 2))
    }
    image_angle = point_direction(x, y, centerx, centery)
}
