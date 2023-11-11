if (argument0 != -3)
    audio_stop_sound(argument0)
else
{
    var snd = abc_123_a
    while audio_exists(snd)
    {
        if (!((snd == snd_ominous || snd == snd_ominous_cancel)))
            audio_stop_sound(snd)
        snd++
    }
}
