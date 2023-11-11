myinteract = 0
image_speed = 0
open = 0
auto = 0
con = 0
if (scr_murderlv() >= 8 && global.flag[27] == 0)
{
    if (global.plot < 108)
        global.plot = 108
}
if (global.plot > 107 && room == room_water6)
    auto = 1
if (room == room_water_piano && global.flag[356] == 1)
    auto = 1
if (auto == 1)
{
    open = 1
    visible = true
    with (instance_position((x + 10), (y + 20), obj_solidtall_2))
        instance_destroy()
}
