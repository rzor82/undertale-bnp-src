if (caster_is_playing(global.currentsong) != 1)
{
    if (global.flag[7] == 1)
    {
        global.currentsong = caster_load("music/reunited.ogg")
        caster_loop(global.currentsong, 1, 1)
        instance_destroy()
        return;
    }
    else
        alarm[1] = 1
}
