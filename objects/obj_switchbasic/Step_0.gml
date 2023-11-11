if (active == true)
{
    if (myinteract == 1 && on == 1)
    {
        if (on == 1)
        {
            snd_play(snd_noise)
            on = 0
        }
        myinteract = 0
        image_index = 0
    }
    if (myinteract == 1 && on == 0)
    {
        if (on == 0)
        {
            snd_play(snd_noise)
            on = 1
        }
        myinteract = 0
        image_index = 1
    }
}
