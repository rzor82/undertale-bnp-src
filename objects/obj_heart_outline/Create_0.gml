if (!instance_exists(obj_heart))
    instance_destroy()
else
{
    x = obj_heart.x
    y = obj_heart.y
    depth = (obj_heart.depth - 5)
    colour1 = c_red
    colour2 = make_colour_rgb(128, 0, 0)
    image_blend = colour1
}
