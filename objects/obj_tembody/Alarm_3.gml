smuggy = 10
if (global.mnfight == 2)
{
    if (instance_exists(blt_temhand) == 0)
    {
        if (instance_exists(obj_maintem) == 0)
            global.mnfight = 3
    }
}
