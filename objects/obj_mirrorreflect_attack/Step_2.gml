if (con > 3)
{
    with (marker)
    {
        depth = (other.depth - 1)
        image_index = obj_heart.image_index
        x = (obj_heart.x - c_borderwidth(1))
        y = obj_heart.y
        with (obj_fakeheart)
        {
            x = other.x
            y = other.y
        }
    }
}
