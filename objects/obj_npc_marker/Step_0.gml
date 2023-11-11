if (npctalk && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.halt != false)
    {
        image_speed = 0
        image_index = 0
    }
    else if instance_exists(obj_face_anything_new)
        image_speed = obj_face_anything_new.image_speed
}
