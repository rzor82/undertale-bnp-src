if (!instance_exists(obj_heart))
    instance_destroy()
else
{
    x = obj_heart.x
    y = obj_heart.y
    depth = (obj_heart.depth - 5)
    if (obj_heart.image_index != 0)
        image_blend = colour2
    else
        image_blend = colour1
}
