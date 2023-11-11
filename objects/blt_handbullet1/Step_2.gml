if (global.turntimer < 0)
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
if (path_position < 0.5)
    path_speed += 0.2
if (path_position > 0.5)
    path_speed -= 0.1
if (path_position == 1)
{
    path_end()
    speed = 0
    gravity = 0
    inactive = 1
}
if (global.hp <= 2)
    global.turntimer = -100
