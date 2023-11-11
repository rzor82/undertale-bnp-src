if (room != room_fire_core_laserfun)
{
    if (active != 2)
        active = true
}
global.border = 0
global.flag[15] = 0
if (room == room_fire_core4 || room == room_fire_core_laserfun)
    global.flag[15] = 1
