if instance_exists(obj_purpleheart)
{
    sizexoff = -27
    sizeyoff = -27
    x = ((obj_purpleheart.x + 2) + sizexoff)
    y = ((obj_purpleheart.y + 2) + sizeyoff)
}
else if instance_exists(obj_heart)
{
    sizexoff = -27
    sizeyoff = -27
    x = ((obj_heart.x + 10) + sizexoff)
    y = ((obj_heart.y + 10) + sizeyoff)
}
else
    instance_destroy()
