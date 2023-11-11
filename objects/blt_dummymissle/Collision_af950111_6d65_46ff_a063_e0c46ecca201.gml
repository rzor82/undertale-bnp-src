if (normal == 1 && destroy == 0)
{
    if (!snd_isplaying(snd_impact))
        snd_play(snd_impact)
    destroy = 1
    normal = 0
    scr_damagestandard_x()
}
