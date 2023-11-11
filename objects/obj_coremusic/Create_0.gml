global.flag[15] = 1
event_user(0)
murder = scr_murderlv() >= 12
if (caster_is_playing(global.currentsong) != 1)
{
    global.flag[15] = 1
    if murder
    {
        if (scr_murderlv() == 16)
        {
            global.currentsong = caster_load("music/core_meltdown.ogg")
            caster_loop(global.currentsong, 1, 0.25)
        }
        else
        {
            anotheruselessvariable = 0
            if (global.flag[425] == 1)
                global.currentsong = -1
            else if (global.flag[224] == 1)
                global.currentsong = caster_load("music/toomuch.ogg")
            else
                global.currentsong = caster_load("music/core_meltdown.ogg")
            caster_loop(global.currentsong, 1, 1)
        }
    }
    else
    {
        global.currentsong = caster_load("music/core.ogg")
        caster_loop(global.currentsong, 0.85, 1)
    }
}
