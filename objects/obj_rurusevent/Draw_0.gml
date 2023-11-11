if show
{
    draw_self()
    if instance_exists(obj_base_writer)
    {
        if (obj_base_writer.halt != true)
            image_speed = 0.2
        else
        {
            image_speed = 0
            image_index = 0
        }
    }
    else
    {
        image_speed = 0
        image_index = 0
    }
}
