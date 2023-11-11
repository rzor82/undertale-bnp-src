image_yscale = 400
touch = 0
callcon = 0
if (global.flag[128] != 4)
{
    if (global.plot > 11 || (global.plot < 8.5 && room == room_ruins1) || global.flag[121] == 2)
        instance_destroy()
}
else
    instance_destroy()
