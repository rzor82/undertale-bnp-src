if (global.flag[91] < 4)
    con = 0
else
    con = 99
if (global.plot > 112)
{
    instance_destroy()
    return;
}
else
    mkid = instance_create(obj_mainchara.x, obj_mainchara.y, obj_mkid_actor)
image_xscale = 9
image_yscale = 9
