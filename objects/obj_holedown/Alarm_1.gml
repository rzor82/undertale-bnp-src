if (global.phasing == 1)
{
    if instance_exists(obj_mainchara_spin)
    {
        with (obj_mainchara_spin)
            mode = 2
    }
    else
    {
        global.facing += 1
        if (global.facing > 3)
            global.facing = 0
    }
    alarm[1] = 4
}
