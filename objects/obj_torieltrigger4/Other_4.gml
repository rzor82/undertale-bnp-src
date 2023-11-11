if (global.plot > 8.5)
{
    if instance_exists(obj_paphouse_entrance)
    {
        with (obj_paphouse_entrance)
            instance_destroy()
    }
    instance_destroy()
}
