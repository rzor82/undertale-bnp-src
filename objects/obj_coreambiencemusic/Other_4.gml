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
    if (scr_murderlv() >= 12)
    {
        global.currentsong = snd_core_meltdown
        caster_loop(global.currentsong, 1, 1)
    }
    else
    {
        global.currentsong = caster_load("music/core_ambience.ogg")
        caster_loop(global.currentsong, 0.6, 0.9)
    }
}
