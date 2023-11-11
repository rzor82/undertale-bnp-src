if (global.faceemotion == 1 && global.flag[390] == 2)
    sprite_index = spr_face_undyne1_3
else if (global.faceemotion == 2 && global.flag[20] == 9)
    sprite_index = spr_face_undyne2_2
else if (global.faceemotion == 9 && global.flag[390] == 1)
    sprite_index = spr_face_undyne9_2
else if (global.faceemotion == 9 && global.flag[390] == 2)
    sprite_index = spr_face_undyne9_3
else if (global.faceemotion == 0 && global.flag[349] == 0)
    sprite_index = spr_face_undyne0_armored
else if (global.faceemotion == 1 && global.flag[349] == 0)
    sprite_index = spr_face_undyne1_armored
else if (global.faceemotion == 2 && global.flag[349] == 0)
    sprite_index = spr_face_undyne2_armored
else if (global.faceemotion == 3 && global.flag[349] == 0)
    sprite_index = spr_face_undyne3_armored
else if (global.faceemotion == 4 && global.flag[349] == 0)
    sprite_index = spr_face_undyne4_armored
else if (global.faceemotion == 5 && global.flag[349] == 0)
    sprite_index = spr_face_undyne5_armored
else if (global.faceemotion == 6 && global.flag[349] == 0)
    sprite_index = spr_face_undyne6_armored
else if (global.faceemotion == 7 && global.flag[349] == 0)
    sprite_index = spr_face_undyne7_armored
else if (global.faceemotion == 9 && global.flag[349] == 0)
    sprite_index = spr_face_undyne9_armored
else
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
draw_self()
