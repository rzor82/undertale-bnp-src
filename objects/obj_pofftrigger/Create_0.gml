image_yscale = 20
t = 0
murder = 0
if (scr_murderlv() >= 4 && global.flag[27] == 0)
    murder = 1
if (global.plot >= 64)
    instance_destroy()
