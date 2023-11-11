if (con == 1)
{
    with (obj_mirrorb)
        scr_shake(3, 3, 2)
    caster_play(snd_crack, 0.7, 0.7)
    alarm[4] = 45
    con = 2
}
else if (con == 3)
{
    caster_play(snd_crack, 0.7, 0.7)
    snd_play(snd_glassbreak)
    with (obj_mirrorb)
        instance_destroy()
    alarm[4] = 120
    create = 1
    con = 4
}
else if (con == 5)
{
    with (obj_mirror_death_fragment)
        instance_destroy()
    alarm[4] = 60
    con = 6
}
else if (con == 7)
{
    caster_free(global.currentsong)
    global.currentsong = caster_loop(mus_silence, 1, 1)
    instance_create(0, 0, obj_persistentfader)
    room_goto(global.currentroom)
    con = -1
}
