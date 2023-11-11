if ((!instance_exists(obj_snowgen)) || ((!obj_snowgen.buffer) && __view_get(2, 0) == obj_snowgen.w && __view_get(3, 0) == obj_snowgen.h))
{
    if tol
    {
        if ((__view_get(0, 0) - x) > tol)
            instance_destroy()
        if ((x - (__view_get(0, 0) + __view_get(2, 0))) > tol)
            instance_destroy()
        if ((__view_get(1, 0) - y) > tol)
            instance_destroy()
        if ((y - (__view_get(1, 0) + __view_get(3, 0))) > tol)
            instance_destroy()
    }
    else
        instance_destroy()
}
