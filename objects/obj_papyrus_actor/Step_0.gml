if (d == 0)
    scr_depth()
if (fun == false)
{
    if (instance_exists(obj_face_anything_new) && global.facechoice == 4)
        image_index = obj_face_anything_new.image_index
    else
    {
        myinteract = 0
        if (speed == 0 && path_speed == 0)
        {
            image_index = 0
            image_speed = 0
        }
        if (speed > 0)
            image_speed = 0.2
        if (path_speed > 0)
            image_speed = 0.2
        if (path_position == 1)
        {
            image_index = 0
            image_speed = 0
        }
        if (npcdir == 1)
            scr_npcdir(0)
    }
}
