if (d > 1)
{
    if variable_instance_exists(id, "myx")
        __view_set(0, 0, myx)
    if variable_instance_exists(id, "myy")
        __view_set(1, 0, myy)
    instance_destroy()
}
