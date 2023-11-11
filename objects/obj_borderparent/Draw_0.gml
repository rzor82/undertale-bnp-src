draw_self()
if (global.newmenu && active)
{
    image_blend = col
    col = merge_colour(c_white, color, colamount)
    if (global.mnfight == 2 || global.mnfight == 1)
    {
        if (colamount < 1)
            colamount += 0.1
        else
        {
            colamount = 1
            if (instaborder == 1)
                colamount = 1
        }
    }
    if (global.mnfight == 3)
    {
        if (colamount > 0)
            colamount -= 0.1
        else
        {
            colamount = 0
            if (instaborder == 1)
                colamount = 0
        }
    }
    if (global.mnfight == 0)
        colamount = 0
}
else
    image_blend = c_white
if instance_exists(obj_battlecontroller)
{
    if (obj_battlecontroller.won == 1)
        active = false
}
