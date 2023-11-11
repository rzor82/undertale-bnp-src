ts = 0
on = 0
if (room == room_fire_preshootguy4)
{
    if (global.flag[400] > 0)
        on = 1
}
if (room == room_fire_conveyorlaser)
{
    if (global.flag[399] > 0)
        on = 1
}
if (room == room_fire8)
{
    if (global.flag[374] > 0)
        on = 1
}
if (room == room_fire9)
{
    if (global.flag[375] > 0)
        on = 1
}
alarm[0] = 1
