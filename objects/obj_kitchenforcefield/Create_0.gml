myinteract = 0
image_yscale = 4
alarm[3] = 1
siner = 0
basic = 1
canttalk = 0
disable = 0
sold = 0
if (room == room_fire_core_topright)
{
    if (global.plot > 197)
        instance_destroy()
}
if (room == room_fire_conveyorlaser)
{
    image_xscale = 1
    image_yscale = 4
    if (global.flag[399] == 1)
        instance_destroy()
}
if (room == room_fire_core_premett)
{
    image_yscale = 1
    image_xscale = 4
    if (global.plot > 197)
        instance_destroy()
}
if (room == room_tundra_xoxopuzz)
{
    image_yscale = 1
    image_xscale = 5
    if (global.plot > 55)
        instance_destroy()
}
if (global.plot >= 185)
{
    if (room == room_fire_prelab)
        instance_destroy()
    if (room == room_fire_elevator_r3)
        instance_destroy()
}
