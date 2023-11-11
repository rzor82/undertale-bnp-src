if fade
    image_alpha -= 0.01
if (image_alpha <= 0)
    instance_destroy()
x = ((room_width - sprite_width) / 2)
if (global.currentroom == room_sanscorridor)
{
    if (sansscroll == 1)
    {
        sprite_index = spr_battlebg_sansbg2
        if (go == 1)
            image_speed = 1
    }
    else
        sprite_index = spr_battlebg_sansbg
}
if faded
{
    if (image_index >= fadeamount)
    {
        image_speed = 0
        image_index = fadeamount
    }
    else
        image_speed = 0.08
}
if (faded == 2)
{
    if (image_index < 1)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = -0.15
}
if (!faded)
{
    with (obj_borderdrawer)
    {
        alpha = (1 - other.image_alpha)
        global.screen_border_alpha = (1 - alpha)
    }
}
