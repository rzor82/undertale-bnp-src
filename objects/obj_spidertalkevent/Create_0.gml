image_yscale = 6
active = false
global.flag[200] = 205
if (global.flag[396] < 5 && global.tempvalue[11] > 0)
    global.flag[396] = 5
con = global.flag[396]
x += (global.flag[396] * 90)
pausewait = 0
pausewaittime = 0
if (global.plot > 164)
{
    instance_destroy()
    return;
}
murder = 0
if (scr_murderlv() >= 12)
    murder = 1
