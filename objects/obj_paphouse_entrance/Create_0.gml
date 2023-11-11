if (room != room_tundra_town)
{
    instance_destroy()
    return;
}
myinteract = 0
read = 0
image_xscale = 1
image_yscale = 1
scr_depth()
dooract = 0
touched = false
if (((global.flag[88] > 1 && global.flag[68] > 0) || global.flag[7] == 1) && room != room_ruins6)
    dooract = 1
