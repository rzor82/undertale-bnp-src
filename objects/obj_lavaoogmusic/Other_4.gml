event_user(0)
ok = 1
if (caster_is_playing(global.currentsong) == 1)
    ok = 0
if instance_exists(obj_undynea_chaser)
    ok = 0
if instance_exists(obj_undynetrigger_dry)
    ok = 0
if (ok == 1)
{
    played = 0
    if (room != room_fire_prelab)
    {
        if (caster_is_playing(global.currentsong) != 1)
        {
            if (global.flag[224] == 0)
            {
                global.currentsong = caster_load("music/oogloop.ogg")
                caster_loop(global.currentsong, 0.7, 0.9)
                if (scr_murderlv() >= 12 && global.flag[27] == 0)
                    caster_set_pitch(global.currentsong, 0.5)
            }
            else if (global.flag[27] == 0)
            {
                global.currentsong = caster_load("music/toomuch.ogg")
                caster_loop(global.currentsong, 1, 1)
            }
            else
            {
                global.currentsong = caster_load("music/oogloop.ogg")
                caster_loop(global.currentsong, 0.7, 0.9)
            }
        }
    }
    else if (global.plot < 125)
    {
        if (caster_is_playing(global.currentsong) != 1)
        {
            if (global.flag[224] == 0)
            {
                global.currentsong = caster_load("music/oogloop.ogg")
                caster_loop(global.currentsong, 0.7, 0.9)
                if (scr_murderlv() >= 12 && global.flag[27] == 0)
                    caster_set_pitch(global.currentsong, 0.5)
            }
            else if (global.flag[27] == 0)
            {
                global.currentsong = caster_load("music/toomuch.ogg")
                caster_loop(global.currentsong, 1, 1)
            }
            else
            {
                global.currentsong = caster_load("music/oogloop.ogg")
                caster_loop(global.currentsong, 0.7, 0.9)
            }
        }
    }
    else
    {
        global.currentsong = caster_load("music/anothermedium.ogg")
        caster_loop(global.currentsong, 1, 1)
        if (scr_murderlv() >= 12 && global.flag[27] == 0)
            caster_set_pitch(global.currentsong, 0.5)
    }
}
