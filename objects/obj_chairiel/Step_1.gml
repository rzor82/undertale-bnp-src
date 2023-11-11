if (global.plot < 19.9)
{
    if (instance_exists(obj_face_anything_new) && global.facechoice == 1 && (!obj_face_anything_new.should_blink))
        image_index = obj_face_anything_new.image_index
    else
        image_index = 0
    script_execute(scr_npcdir, 2)
}
if (global.plot == 19.9 && instance_exists(obj_dialoguer) == 0)
{
    sprite_index = spr_chairielgetup
    image_index = 0
    image_speed = 0.2
    global.interact = 1
    global.plot = 20
}
