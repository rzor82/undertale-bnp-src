off = 1
repeat (54)
{
    with (instance_create((x + 30), (y + 30), obj_jarfly))
        depth = (other.depth + 1)
}
