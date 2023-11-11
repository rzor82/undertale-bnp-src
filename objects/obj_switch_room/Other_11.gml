on = 0
image_speed = 0.25
sprite_index = spr_onoffswitch_off
if (room == room_fire8)
    global.flag[374] = 0
if (room == room_fire9)
    global.flag[375] = 0
if (room == room_fire_core_warrior)
{
    global.flag[419] = 1
    sprite_index = spr_onoffswitch_on
}
