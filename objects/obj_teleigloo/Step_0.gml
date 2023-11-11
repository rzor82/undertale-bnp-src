if (con == 5)
{
    if (xx < 15)
        xx += 0.5
    global.interact = 1
    obj_mainchara.x += xx
    obj_mainchara.x = ceil(obj_mainchara.x)
    if (obj_mainchara.x >= 2160)
    {
        if (xx > 3)
            xx -= 1
    }
    if (obj_mainchara.x >= 2397)
    {
        with (obj_mainchara)
        {
            x = 2399
            disable_run = 0
        }
        con = 99
    }
}
if (con == 10)
{
    if (xx < 15)
        xx += 0.5
    global.interact = 1
    obj_mainchara.x -= xx
    obj_mainchara.x = floor(obj_mainchara.x)
    if (obj_mainchara.x <= 980)
    {
        if (xx > 3)
            xx -= 1
    }
    if (obj_mainchara.x <= 754)
    {
        with (obj_mainchara)
        {
            x = 755
            disable_run = 0
        }
        con = 99
    }
}
if (con == 99)
{
    obj_mainchara.stuck = false
    with (obj_mainchara)
        image_alpha = 1
    snd_play(snd_noise)
    global.facing = 0
    global.interact = 0
    global.phasing = 0
    fakeactive = 1
    con = 100
}
if (con == 100)
{
    if (obj_mainchara.y < 135)
    {
        obj_mainchara.y = 135
        con = 0
    }
}
if (con > 0 && instance_exists(obj_dialoguer))
{
    with (obj_speedrun_tracker)
        igloo = 1
}
