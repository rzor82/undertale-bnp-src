if (hostile == 1)
{
    if (on == 1)
    {
        if (con == 1)
        {
            con = 2
            alarm[4] = timevariant
        }
        if (con == 3)
        {
            con = 4
            if (!snd_isplaying(snd_shakerbreaker))
                snd_play(snd_shakerbreaker)
            active = false
            alarm[4] = timevariant
        }
        if (con == 5)
        {
            if (!snd_isplaying(snd_noise))
                snd_play(snd_noise)
            con = 6
        }
        if (con == 6)
        {
            con = 7
            active = true
            alarm[0] = gen_speed
            alarm[4] = 5
        }
        if (con == 8)
            con = 1
    }
    if (global.flag[214] == 1)
    {
        if (on == 1)
        {
            with (obj_soulvision)
                active = false
            active = false
            if (!snd_isplaying(snd_shakerbreaker))
                snd_play(snd_shakerbreaker)
            on = 0
            con = 0
        }
    }
    if (global.flag[214] == 0)
    {
        if (on == 0)
        {
            with (obj_soulvision)
                active = true
            active = true
            on = 1
            con = 6
        }
    }
}
