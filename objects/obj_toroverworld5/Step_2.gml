if (instance_exists(obj_dialoguer) == 0)
{
    instance_create(x, y, obj_toroverworld6)
    global.interact = 0
    instance_destroy()
}
