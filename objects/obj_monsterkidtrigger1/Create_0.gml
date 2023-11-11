if (global.plot > 103 || global.flag[327] == 1)
{
    if instance_exists(obj_townnpc_monsterkid1)
    {
        with (obj_townnpc_monsterkid1)
            instance_destroy()
    }
    instance_destroy()
}
else
{
    conversation = 0
    image_yscale = 999
}
old = 0
talkedto = 0
