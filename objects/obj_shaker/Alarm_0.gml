if (hshake != 0)
{
    if (hshake < 0)
    {
        __view_set(0, myview, (__view_get(0, myview) + hshake))
        hshake += 1
    }
    if (hshake > 0)
        __view_set(0, myview, (__view_get(0, myview) + hshake))
    hshake = (-hshake)
}
if (vshake != 0)
{
    if (vshake > 0)
        __view_set(1, myview, (__view_get(1, myview) + vshake))
    if (vshake < 0)
    {
        __view_set(1, myview, (__view_get(1, myview) + vshake))
        vshake += 1
    }
    vshake = (-vshake)
}
alarm[myview] = shakespeed
if (hshake == 0 && vshake == 0)
    instance_destroy()
