if (d == 0)
    scr_depth()
if (fun == false)
{
    myinteract = 0
    if (speed == 0)
    {
        image_index = 0
        image_speed = 0
    }
    if (speed > 0)
        image_speed = 0.2
    if (sprite_index == spr_mkid_lt || sprite_index == spr_mkid_rt || sprite_index == spr_mkid_ut || sprite_index == spr_mkid_dt)
    {
        if (instance_exists(obj_face_anything_new) && global.facechoice == "A")
            image_index = obj_face_anything_new.image_index
        else if (speed == 0 && path_speed == 0)
            image_index = 0
    }
}
