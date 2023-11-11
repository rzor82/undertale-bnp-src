if (global.phasing == 0 && global.interact == 0)
{
    snd_play(snd_escaped)
    global.interact = 4
    global.phasing = 1
    alarm[0] = 10
}
