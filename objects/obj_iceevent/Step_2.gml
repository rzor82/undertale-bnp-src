if instance_exists(skid)
{
    skid.depth = obj_mainchara.depth
    if (global.flag[388] == 1)
        instance_destroy(skid)
}
