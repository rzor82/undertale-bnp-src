edge = 1
image = spr_asrielbg
w0 = 800
h0 = 800
rotspeed = -2
part = 40
col = 0
vk = 1
image_alpha = 0
flashtime = 660
ftimer = 0
falpha = 0
if (global.flag[500] == 1)
{
    if (global.flag[502] > 0)
    {
        ftimer = 9999
        image_alpha = 0.5
    }
    with (obj_battlecontroller)
        drawrect = 0
}
fadeout_time_end = 685
fadeout_time = 671
fadein_time = 631
boundx = 800
