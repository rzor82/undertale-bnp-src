if (con == 55 && blk > 1.8)
{
    caster_stop(global.currentsong)
    caster_free(global.currentsong)
    instance_create(0, 0, obj_persistentfader)
    scr_enable_screen_border(true)
    room_goto(room_tundra1)
}
if (siner >= 1.5707963267949 || godown == 1)
{
    siner -= siner_inc
    godown = 1
    if (siner <= 0)
        godown = 0
}
else
    siner += siner_inc
