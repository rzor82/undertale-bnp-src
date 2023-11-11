if (myinteract == 1)
{
    if (audio_is_playing(snd_movemenu) == 0)
    {
        snd_stop(snd_movemenu)
        snd_play(snd_movemenu)
    }
    myinteract = 0
}
