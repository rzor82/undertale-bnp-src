script_execute(scr_depth, 0, 0, 0, 0, 0)
if (fun == false)
{
    if (instance_exists(obj_face_anything_new) && global.facechoice == 6)
        image_index = obj_face_anything_new.image_index
    else
        image_index = 0
    script_execute(scr_npcdir, 2)
}
