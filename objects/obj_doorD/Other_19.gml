global.interact = 3
if (touched == false)
{
    if (runawaytype == 1)
    {
        if snd_isplaying(snd_escaped)
            snd_stop(snd_escaped)
        snd_play(snd_escaped)
        runawaytype = 0
    }
    var fader = instance_create(0, 0, obj_unfader)
    fader.tspeed = 0.15
    alarm[2] = 8
    touched = true
}
