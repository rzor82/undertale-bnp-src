global.flag[200] = 205
image_xscale = 6
con = 0
if (global.flag[7] == 1 || global.flag[8] == 1 || global.flag[335] > 0)
{
    instance_destroy()
    return;
}
else
    con = 1
