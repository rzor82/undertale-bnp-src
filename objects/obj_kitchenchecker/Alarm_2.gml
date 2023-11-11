if (obj_mainchara.bbox_top < 134)
{
    level = 0
    if (instance_exists(block[0]) == 0)
    {
        block[0] = instance_create(160, 54, obj_solidextall_2)
        block[1] = instance_create(160, 77, obj_solidextall_2)
        block[2] = instance_create(280, 54, obj_solidextall_2)
        block[3] = instance_create(280, 77, obj_solidextall_2)
        block[5] = instance_create(180, 60, obj_solidsmall)
        block[6] = instance_create(180, 80, obj_solidsmall)
        if ((global.osflavor == 1 || global.osflavor == 5) && global.flag[82] == 1)
            dogdoor = instance_create(212, 57, obj_doorXmusicfade)
        else
            dogdoor = noone
    }
    if instance_exists(block[4])
    {
        with (block[4])
            instance_destroy()
    }
}
else
{
    level = 1
    if instance_exists(block[0])
    {
        with (block[0])
            instance_destroy()
        with (block[1])
            instance_destroy()
        with (block[2])
            instance_destroy()
        with (block[3])
            instance_destroy()
        with (block[5])
            instance_destroy()
        with (block[6])
            instance_destroy()
        if (dogdoor != noone)
        {
            with (dogdoor)
                instance_destroy()
            dogdoor = -4
        }
    }
    if (instance_exists(block[4]) == 0)
        block[4] = instance_create(83, 90, obj_solidlong)
}
