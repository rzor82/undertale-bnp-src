global.flag[15] = 0
event_user(0)
played = 0
alarm[0] = 1
murder = scr_murderlv() >= 12
if (room != room_fire_brattycattyshop && room != room_fire_hotel_bpants)
{
    if murder
    {
        instance_create(0, 0, obj_labdarkness)
        with (instance_create(0, 0, obj_alarmflasher))
        {
            if (scr_murderlv() < 16)
                active = true
        }
    }
    if ((!instance_exists(obj_sansdate3)) && caster_is_playing(global.currentsong) != 1)
    {
        if (global.flag[224] == 0 && global.flag[27] == 0)
        {
            if murder
                global.currentsong = snd_hotel_geno
            else
                global.currentsong = caster_load("music/hotel.ogg")
        }
        else if (global.flag[27] == 0)
            global.currentsong = caster_load("music/toomuch.ogg")
        else
            global.currentsong = caster_load("music/hotel.ogg")
        caster_loop(global.currentsong, 1, 1)
    }
}
if (room == room_fire_brattycattyshop && (!caster_is_playing(global.currentsong)))
{
    vol = 0.8
    if (global.flag[7] == 0)
    {
        global.currentsong = caster_load("music/brattycatty_shop.ogg")
        caster_loop(global.currentsong, vol, 1)
        if murder
        {
            caster_set_pitch(global.currentsong, 0.25)
            caster_loop(snd_hotel_geno_outside, 0.8, 1)
        }
    }
}
if (room == room_fire_hotel_bpants && (!caster_is_playing(global.currentsong)))
{
    if murder
    {
        instance_create(0, 0, obj_labdarkness)
        with (instance_create(0, 0, obj_alarmflasher))
            active = true
    }
    vol = 0.8
    if (global.flag[7] == 0)
    {
        global.currentsong = caster_load("music/burger_shop.ogg")
        if (global.flag[435] < 2)
            caster_loop(global.currentsong, vol, 0.7)
        else
            caster_loop(global.currentsong, vol, 0.8)
        if murder
        {
            if (global.flag[224] == 0 && global.flag[27] == 0)
                caster_loop(snd_hotel_geno, 1, 1)
            caster_set_pitch(global.currentsong, 0.4)
        }
        if (global.flag[437] == 9)
            caster_set_pitch(global.currentsong, 1)
    }
}
