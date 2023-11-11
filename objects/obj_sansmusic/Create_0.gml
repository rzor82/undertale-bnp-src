event_user(0)
if (caster_is_playing(global.currentsong) != 1)
{
    if (room == room_tundra_grillby && abs(global.flag[61] < 2))
    {
        if (global.flag[61] == 0)
            global.currentsong = caster_load("music/grillby_02")
        else if (global.flag[61] == 1)
            global.currentsong = caster_load("music/grillby_01")
        caster_loop(global.currentsong, 1, 1)
    }
    else if (global.flag[67] != 1)
    {
        if (room != room_tundra_sansbasement && room != room_tundra_grillby)
        {
            global.currentsong = caster_load("music/muscle.ogg")
            caster_loop(global.currentsong, 1, 1)
        }
        else
        {
            global.currentsong = caster_load("music/sansdate.ogg")
            caster_loop(global.currentsong, 0.9, 0.8)
        }
    }
}
if (scr_murderlv() >= 6 && global.flag[27] == 0)
    caster_loop(global.currentsong, 1, 0.5)
