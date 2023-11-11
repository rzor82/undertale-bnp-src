scr_set_face()
if instance_exists(obj_dialoguer)
{
    if (obj_dialoguer.side == 0)
    {
        with (obj_face)
        {
            if (y > (obj_dialoguer.yy + 80))
                y -= 155
        }
    }
    if (obj_dialoguer.side == 1)
    {
        with (obj_face)
        {
            if (y < (obj_dialoguer.yy + 80))
                y += 155
        }
    }
}
