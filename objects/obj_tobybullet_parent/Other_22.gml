if (global.dinv < 0)
{
    global.dinv = 20
    hitted = 0
    snd_play(snd_hurt1_c)
    instance_create(0, 0, obj_vsflowey_shaker)
    global.tobyshake = 8
    if (hitted == 0)
    {
        global.dhp -= floor(clamp((global.dhp / 2.5), 1, 999999))
        hitted = 1
    }
}
