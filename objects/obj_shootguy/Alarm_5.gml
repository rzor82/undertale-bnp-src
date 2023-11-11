if (ammo < idealammo)
{
    if (room == room_fire_core2 && caster_is_playing(global.currentsong))
        caster_pause(global.currentsong)
    if (ammo < (idealammo - 1))
        buffer += 6
    ammo += 1
    snd_play(snd_noise)
    alarm[5] = 6
}
else if (room == room_fire_core2)
    caster_resume(global.currentsong)
