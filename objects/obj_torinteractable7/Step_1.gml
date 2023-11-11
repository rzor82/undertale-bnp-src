scr_depth()
scr_npcdir(2)
if (instance_exists(obj_face_anything_new) && global.facechoice == 1 && (!obj_face_anything_new.should_blink))
    image_index = obj_face_anything_new.image_index
else if (instance_exists(obj_face_anything_new) && global.facechoice == 9 && global.flag[7] == 1)
    image_index = obj_face_anything_new.image_index
else
    image_index = 0
