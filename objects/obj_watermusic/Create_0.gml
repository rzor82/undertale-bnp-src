event_user(0)
played = 0
if (global.flag[350] == 1 && global.plot < 123)
{
    instance_destroy()
    return;
}
if (caster_is_playing(global.currentsong) != 1)
{
    if (global.flag[223] == 0)
    {
        global.currentsong = caster_load("music/waterfall.ogg")
        caster_loop(global.currentsong, 0.8, 1)
        if (scr_murderlv() >= 8 && global.flag[27] == 0)
            caster_set_pitch(global.currentsong, 0.13)
    }
    else if (global.flag[27] == 0)
    {
        if (global.flag[251] == 1 || scr_murderlv() >= 12)
        {
            global.currentsong = caster_load("music/waterfall.ogg")
            caster_loop(global.currentsong, 0.8, 0.25)
        }
        else
        {
            global.currentsong = caster_load("music/toomuch.ogg")
            caster_loop(global.currentsong, 1, 1)
        }
    }
    else
    {
        global.currentsong = caster_load("music/waterfall.ogg")
        caster_loop(global.currentsong, 0.8, 1)
    }
}
