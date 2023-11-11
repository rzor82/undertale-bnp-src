if instance_exists(subject)
{
    x = subject.x
    y = subject.y
    image_xscale = 1
    depth = (subject.depth + 100)
}
if (requires_unlock && (!instance_exists(obj_dialoguer)))
{
    global.interact = 0
    requires_unlock = 0
}
