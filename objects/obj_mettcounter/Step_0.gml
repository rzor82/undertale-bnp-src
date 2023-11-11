if (room != room_battle)
{
    if instance_exists(obj_cookshowevent)
    {
        if (obj_cookshowevent.con < 4)
            depth = 1000000
        else
            scr_depth()
    }
    else
        scr_depth()
}
else
    image_speed = 0.5
if (image_index == 7)
{
    image_speed = 0
    image_alpha -= 0.07
}
