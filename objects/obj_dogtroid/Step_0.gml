if (con == 1)
{
    caster_play(mus_dogtroid_intro, 1, 1)
    con = 2
}
else if (con == 2 && (!caster_is_playing(mus_dogtroid_intro)))
{
    caster_loop(mus_dogtroid, 1, 1)
    con = 3
}
room_speed = 30
