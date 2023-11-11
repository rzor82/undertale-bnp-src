con = 0
if (scr_murderlv() >= 16)
    murder = 1
if (global.plot > 200)
    instance_destroy()
image_yscale = 6
murder = 0
if (scr_murderlv() >= 16 && global.flag[27] == 0)
    murder = 1
with (obj_mainchara)
{
    disable_run = 0
    image_blend = c_black
}
