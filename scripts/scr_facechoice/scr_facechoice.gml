with (obj_face)
{
    xstart = other.writer.x
    ystart = other.writer.y
}
if (global.facechoice == 0)
{
    with (obj_face)
        instance_destroy()
    return;
}
if instance_exists(obj_face)
    return;
instance_create(writer.x, writer.y, obj_face_anything_new)
