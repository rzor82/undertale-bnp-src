if (solved == 1)
{
    if (spikeoff < 100)
        spikeoff += 3
    else
    {
        spikeoff = 100
        solved = 2
        with (wall)
            instance_destroy()
        caster_stop(opensnd)
        snd_play(snd_noise)
    }
    with (wall)
        y -= 3
}
draw_sprite_part(bg_ruinstiles_sewer, 0, 372, 128, 20, 13, (x - 40), ((y + 167) - spikeoff))
for (i = 0; i < 7; i++)
    draw_sprite_part(bg_ruinstiles_sewer, 0, 372, 110, 20, 18, (x - 40), (((y + 149) - (i * 18)) - spikeoff))
draw_sprite_part(bg_ruinstiles_sewer, 0, 240, 10, 20, 50, 120, 40)
