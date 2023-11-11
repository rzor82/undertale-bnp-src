if (global.facechoice != 3)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
if (global.facechoice == 3)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
if (global.faceemotion == 0)
    face = spr_papyrusboss_head_neo
if (global.faceemotion == 1)
    face = spr_papyrushead_mad
if (global.faceemotion == 2)
    face = spr_papyrushead_blush
if (global.faceemotion == 3)
    face = spr_papyrushead_side
if (global.faceemotion == 4)
    face = spr_papyrushead_sweaty
if (global.faceemotion == 5)
    face = spr_papyrushead_sad
if (global.faceemotion == 6)
    face = spr_papyrushead_hurt
if (global.faceemotion == 7)
    face = spr_papyrushead_confident
if (global.faceemotion == 8)
    face = spr_papyrushead_sly
if (global.faceemotion == 9)
    face = spr_papyrushead_anime
if (global.faceemotion == "A")
    face = spr_papyrushead_normal
if (global.faceemotion == "B")
    face = spr_papyrushead_blush2
if (global.faceemotion == "C")
    face = spr_paphead_friendship
if (scr_murderlv() < 7)
{
    if (global.facechoice != 3)
        draw_sprite_ext(face, face_index, (x + 34), y, 2, 2, 0, c_white, 1)
}
if (global.facechoice == 0)
    sprite_index = spr_papyrusboss_body_neo
if (global.facechoice == 1)
    sprite_index = spr_papdate
if (global.facechoice == 2)
    sprite_index = spr_papdate_coy
if (global.facechoice == 3)
    sprite_index = spr_papyrusboss_confuse
if (scr_murderlv() >= 7)
    sprite_index = spr_papyrusboss_body_kneel
face_index += face_speed
if (instance_exists(OBJ_WRITER) && global.mnfight != 0)
{
    if (OBJ_WRITER.halt == false)
        face_speed = 0.25
    if (OBJ_WRITER.halt != false && global.faceemotion != 9)
    {
        face_index = 0
        face_speed = 0
    }
}
else
{
    face_index = 0
    face_speed = 0
}
if (global.faceemotion == 8)
    face_speed = 0.13
if (global.facechoice == 3)
    image_speed = 0.13
if (global.faceemotion == 7)
    face_speed = 0.29
