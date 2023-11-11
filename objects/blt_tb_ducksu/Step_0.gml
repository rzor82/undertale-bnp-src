if (con == 0)
{
    if (image_alpha < 1)
        image_alpha += 0.1
    else
        image_alpha = 1
    if (x < 125)
    {
        global.turntimer = -1
        global.mnfight = 3
    }
    y = (inity + (1 + (sin((siner * 0.1)) * 35)))
}
if (con == 1)
{
    alarm[0] = 30
    con = 2
}
if (con == 2)
{
    image_yscale = (1 + ((-(sin((siner * 0.5)))) * amp))
    image_xscale = (1 + (sin((siner * 0.5)) * amp))
    if (amp > 0)
        amp -= 0.03
    else
        amp = 0
}
if (con == 3)
{
    yscale = 1
    amp = 0.25
    alarm[0] = 30
    con = 4
    snd_play(snd_balloon_inflate)
}
if (con == 4)
{
    image_yscale = (yscale + (sin((siner * 0.333)) * amp))
    image_xscale = (yscale + (sin(((siner + 1.25) * 0.333)) * amp))
    if (amp < 4)
        amp += 0.03
    else
        amp = 4
    yscale += 0.0333
}
if (con == 5)
{
    snd_play(snd_balloon_pop)
    if (global.hp > 99)
        dmg = 9999
    init_dir = point_direction(x, y, (obj_heart.x + 8), (obj_heart.y + 8))
    for (i = 0; i <= 16; i++)
    {
        myblt = instance_create(x, y, blt_basic)
        myblt.direction = (init_dir + (i * 22.5))
        myblt.speed = 10
        myblt.facing = 1
        myblt.dmg = dmg
    }
    with (obj_shaker)
        instance_destroy()
    global.hshake = 8
    global.shakespeed = 1
    global.vshake = 8
    instance_create(0, 0, obj_shaker)
    myeffect = scr_marker((x - 20), (y - 24), spr_bombexplosion)
    myeffect.image_xscale = 2
    myeffect.image_yscale = 2
    myeffect.image_alpha = 0.75
    con = 6
    alarm[0] = 60
    visible = false
}
if (con == 6)
{
    if instance_exists(myeffect)
    {
        myeffect.image_xscale += (0.2 + random_range(-0.1, 0.1))
        myeffect.image_yscale += (0.2 + random_range(-0.1, 0.1))
        myeffect.image_alpha -= 0.0334
        if (myeffect.image_alpha <= 0)
        {
            with (myeffect)
                instance_destroy()
        }
    }
}
if (con == 7)
{
    if instance_exists(myeffect)
    {
        with (myeffect)
            instance_destroy()
    }
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
siner++
