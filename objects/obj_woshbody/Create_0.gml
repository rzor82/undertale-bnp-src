image_xscale = 2
image_yscale = 2
anim = 0
hy = 34
fy = 0
fu = 1
alarm[1] = 5
ducky = 18
wd = (x + 39)
wy = (y + 33)
waterxx = 0
alarm[2] = 5
wu = 1
bull = 0
con = 0
shinied = 0
if instance_exists(obj_woshua)
{
    if (obj_woshua.altchance == 7)
    {
        shinied = 1
        sprite_index = spr_woshbody_shiny
    }
}
