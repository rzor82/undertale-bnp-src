if (global.debug == true)
{
    var reunited = caster_load("music/reunited.ogg")
    if (global.currentsong != reunited || (!caster_is_playing(global.currentsong)))
    {
        caster_free(-3)
        global.currentsong = reunited
        caster_loop(global.currentsong, 1, 1)
    }
    global.flag[469] = 1
    global.flag[26] = 0
    global.flag[7] = 1
    global.plot = 999
    room_restart()
}
