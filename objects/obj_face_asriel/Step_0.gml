sprite_index = u[global.faceemotion]
if instance_exists(OBJ_WRITER)
{
    if (OBJ_WRITER.halt != false)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
}
if (global.facechoice == 0)
    instance_destroy()
if instance_exists(obj_dialoguer)
    depth = (obj_dialoguer.depth - 100000000000)
