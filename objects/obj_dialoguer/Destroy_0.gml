if instance_exists(obj_face)
{
    with (obj_face)
        instance_destroy()
}
if instance_exists(OBJ_WRITER)
{
    if (forceclose == 1)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
}
