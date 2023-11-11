on = 1
image_speed = 0.25
sprite_index = spr_onoffswitch_on
if (room == room_fire8)
    global.flag[374] = 1
if (room == room_fire9)
    global.flag[375] = 1
if (room == room_fire_core_warrior)
{
    global.flag[419] = 1
    scr_tempsave()
}
