event_user(0)
if instance_exists(OBJ_WRITER)
{
    if (global.facechoice == "D" && OBJ_WRITER.halt != false)
        image_speed = 0.25
    else if (global.facechoice == "E" && OBJ_WRITER.halt != false)
        image_speed = 0.25
    else if (OBJ_WRITER.halt != false)
        image_speed = 0
    else
        image_speed = 0.25
    if instance_exists(obj_mettaton_actor)
    {
        if (global.facechoice == "D" || global.facechoice == "E")
            image_speed = obj_mettaton_actor.image_speed
    }
}
if instance_exists(obj_dialoguer)
    depth = (obj_dialoguer.depth - 100000000000)
if (OBJ_WRITER.halt != false)
{
    image_speed = 0
    image_index = 0
}
