image_xscale = 3
t = 0
if (room == room_tundra_snowpuzz)
{
    if (scr_murderlv() >= 3)
    {
        if (global.flag[64] == 0)
            global.flag[64] = 1
        if (global.plot <= 48)
            global.plot = 49
    }
}
