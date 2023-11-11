event_user(0)
played = 0
if (caster_is_playing(global.currentsong) != 1)
{
    if (room == ROOM_MONITOR)
    {
        global.currentsong = caster_load("music/f_wind1.ogg")
        caster_loop(global.currentsong, 1, 1)
        caster_set_pitch(global.currentsong, 0.2)
    }
    else if (room == ROOM_MAN)
    {
        global.currentsong = caster_load("music/st_him.ogg")
        caster_loop(global.currentsong, 0.5, 0.1)
        caster_set_pitch(global.currentsong, 0.1)
    }
    else if (room >= room_fire_hh_mainhub && room <= room_fire_hh_lower)
    {
        global.currentsong = caster_load("music/hotlandheights.ogg")
        caster_loop(global.currentsong, 0.7, 1)
        if (scr_murderlv() >= 12 && global.flag[27] == 0)
            caster_set_pitch(global.currentsong, 0.6)
    }
    else if (global.flag[224] == 0)
    {
        global.currentsong = caster_load("music/anothermedium.ogg")
        caster_loop(global.currentsong, 1, 1)
        if (scr_murderlv() >= 12 && global.flag[27] == 0)
            caster_set_pitch(global.currentsong, 0.5)
    }
    else if (global.flag[27] == 0)
    {
        if (scr_murderlv() == 16)
        {
            global.currentsong = caster_load("music/anothermedium.ogg")
            caster_loop(global.currentsong, 1, 0.25)
        }
        else
        {
            global.currentsong = caster_load("music/toomuch.ogg")
            caster_loop(global.currentsong, 1, 1)
        }
    }
    else
    {
        global.currentsong = caster_load("music/anothermedium.ogg")
        caster_loop(global.currentsong, 1, 1)
    }
}
if (room == room_fire_cookingshow)
{
    if (global.plot < 134)
        instance_destroy()
}
