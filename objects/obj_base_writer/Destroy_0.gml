if (instance_exists(obj_face) == 1)
{
    with (obj_face)
        instance_destroy()
}
if surface_exists(textsurf)
    surface_free(textsurf)
