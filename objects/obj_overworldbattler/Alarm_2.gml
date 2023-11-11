dohshake = 1
dovshake = 1
if instance_exists(obj_mainchara)
{
    dohshake = (!((obj_time.left || obj_time.right)))
    dovshake = (!((obj_time.up || obj_time.down)))
}
if (hshake != 0)
{
    if (hshake < 0)
    {
        if dohshake
            __view_set(0, view_current, (__view_get(0, view_current) + hshake))
        hshake += 1
    }
    if (hshake > 0 && dohshake)
        __view_set(0, view_current, (__view_get(0, view_current) + hshake))
    hshake = (-hshake)
}
if (vshake != 0)
{
    if (vshake > 0 && dovshake)
        __view_set(1, view_current, (__view_get(1, view_current) + vshake))
    if (vshake < 0)
    {
        if dovshake
            __view_set(1, view_current, (__view_get(1, view_current) + vshake))
        vshake += 1
    }
    vshake = (-vshake)
}
if (hshake != 0 || vshake != 0)
    alarm[2] = shakespeed
