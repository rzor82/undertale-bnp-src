t = 0
image_yscale = 5
donotcall = 0
resume = 0
if (room == room_water5 && global.plot > 106)
    instance_destroy()
if (room == room_fire_core_controlroom)
{
    image_yscale = 1
    image_xscale = 200
    if (global.flag[162] == 1 || global.plot >= 199)
        instance_destroy()
}
if (room == room_water12 && global.flag[354] > 0)
    instance_destroy()
if (room == room_water_undynefinal3 && global.flag[354] > 1)
    instance_destroy()
if (room == room_fire_finalelevator && global.flag[384] > 0)
{
    image_yscale = 1
    image_xscale = 10
    instance_destroy()
}
if (room == room_fire6 && global.plot > 129)
    instance_destroy()
if (room == room_fire_lasers1 && global.plot > 130)
    instance_destroy()
if (room == room_fire7 && global.plot > 131)
    instance_destroy()
if (room == room_fire8 && global.flag[373] == 1)
{
    obj_bluelaser_o.active = 2
    instance_destroy()
}
if (room == room_fire10 && global.plot > 138)
    instance_destroy()
if (room == room_fire_turn && (global.plot >= 133.5 || scr_murderlv() >= 12))
    instance_destroy()
if (room == room_fire_savepoint1 && global.plot >= 137)
    instance_destroy()
if (room == room_fire_precore && global.plot > 175)
    instance_destroy()
if (room == room_fire_core1 && global.plot > 176)
    instance_destroy()
if (room == room_fire_core2 && global.flag[415] == 1)
    instance_destroy()
if (room == room_fire_core2 && global.plot > 180)
    instance_destroy()
if (room == room_fire_core4 && global.plot >= 180)
    instance_destroy()
if (room == room_fire_core5 && global.plot > 181)
    instance_destroy()
if (room == room_fire_core_laserfun && global.plot > 182)
    instance_destroy()
if (room == room_fire_core_branch && global.plot > 184)
    instance_destroy()
if (room == room_fire_walkandbranch2 && global.plot >= 163)
    instance_destroy()
if (room == room_fire_core_roadblock && global.flag[335] >= 2)
    instance_destroy()
if (room == room_water_trashzone2)
{
    image_yscale = 1
    if (global.flag[493] != 10)
        instance_destroy()
}
if (scr_murderlv() == 16)
    instance_destroy()
