scr_depth()
if (room == room_ruins_sewer2)
{
    if (global.flag[32] == 2 || global.flag[116] == 1)
        x = 340
}
else if (room != room_ruins_sewer2)
{
    if (global.flag[32] == 1)
        x = 280
}
