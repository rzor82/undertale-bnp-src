if instance_exists(obj_dialoguer)
{
    if (obj_dialoguer.count == 0)
    {
        visible = false
        alarm[9] = 1
    }
}
if instance_exists(obj_battlecontroller)
{
    image_xscale = 2
    image_yscale = 2
}
camx = (__view_get(0, view_current) + x)
camy = (__view_get(1, view_current) + y)
orgx = (x - __view_get(0, view_current))
orgy = (y - __view_get(1, view_current))
