if (variable_instance_exists(obj_face.id, "camx") && variable_instance_exists(obj_face.id, "camy"))
{
    if (camx != (__view_get(0, view_current) + orgx))
    {
        x = (__view_get(0, view_current) + orgx)
        camx = (__view_get(0, view_current) + orgx)
    }
    if (camy != (__view_get(1, view_current) + orgy))
    {
        y = (__view_get(1, view_current) + orgy)
        camy = (__view_get(1, view_current) + orgy)
    }
}
