phase = 0
image_yscale = 400
if (room == room_ruins_sewer2)
{
    if (global.flag[32] == 2 || global.flag[116] == 1)
        instance_destroy()
}
else if (room != room_ruins_sewer2)
{
    if (global.flag[35] == 1)
        instance_destroy()
}
