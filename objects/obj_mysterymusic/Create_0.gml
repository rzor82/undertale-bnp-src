event_user(0)
played = 0
sspeed = 0.9
if (scr_murderlv() >= 8)
    sspeed = 0.8
if (caster_is_playing(global.currentsong) != 1)
{
    if (global.flag[7] == 1)
    {
        global.currentsong = caster_load("music/reunited.ogg")
        caster_loop(global.currentsong, 1, 1)
    }
    else
    {
        global.currentsong = caster_load("music/mystery.ogg")
        if (room == room_water_mirror)
            global.currentsong = caster_load((global.flag[365] < 2 ? "music/star.ogg" : "music/silence.ogg"))
        caster_loop(global.currentsong, 0.65, sspeed)
    }
}
