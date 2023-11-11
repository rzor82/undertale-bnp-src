if instance_exists(obj_caterpillar_parent)
{
    var step = floor(obj_caterpillar_parent.image_index)
    image_index += 0.2
    x = (obj_caterpillar_parent.x + 2)
    if (actor == 1840)
        y = (obj_caterpillar_parent.y + 3)
    else
        y = obj_caterpillar_parent.y
    draw_self_custom(x1, x2, y1, y2)
}
