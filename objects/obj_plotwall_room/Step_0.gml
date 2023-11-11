if (global.plot > plotrating)
{
    if (room == room_tundra_xoxopuzz)
    {
        if instance_exists(obj_kitchenforcefield)
        {
            with (obj_kitchenforcefield)
                instance_destroy()
        }
    }
    instance_destroy()
}
