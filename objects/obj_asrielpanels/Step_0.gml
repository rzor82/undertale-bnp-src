if do_room_goto
{
    with (obj_borderdrawer)
        instance_destroy()
    do_room_goto = false
    room_goto(room_battle)
}
if (audio_is_playing(global.batmusic) && audio_is_playing(global.batmusic2))
    caster_free(global.batmusic)
