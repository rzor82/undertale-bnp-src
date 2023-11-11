if (global.plot >= 113)
{
    instance_destroy()
    return;
}
else
{
    mkid = instance_create((x + 40), y, obj_mkid_actor)
    with (mkid)
    {
        follow = -1
        facing[target] = 0
    }
}
con = 0
image_yscale = 10
numero = 0
if (global.flag[90] > 0)
    numero = 1
if (global.entrance == 2)
    alarm[2] = 2
