if (room == room_ruins_sewer2)
{
    if (global.flag[32] == 2)
        instance_destroy()
}
else if (room != room_ruins_sewer2)
{
    if (global.flag[35] == 1)
        instance_destroy()
}
