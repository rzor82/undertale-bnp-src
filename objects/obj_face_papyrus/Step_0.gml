if (global.faceemotion == 0 && sprite_index != spr_face_papyrus)
    sprite_index = spr_face_papyrus
if (global.faceemotion == 1 && sprite_index != spr_face_papyrusmad)
    sprite_index = spr_face_papyrusmad
if (global.faceemotion == 2 && sprite_index != spr_face_papyruslaugh)
    sprite_index = spr_face_papyruslaugh
if (global.faceemotion == 3 && sprite_index != spr_face_papyrusside)
    sprite_index = spr_face_papyrusside
if (global.faceemotion == 4 && sprite_index != spr_face_papyrusevil)
    sprite_index = spr_face_papyrusevil
if (global.faceemotion == 5 && sprite_index != spr_face_papyrusside)
    sprite_index = spr_face_papyrussweat
if (global.faceemotion == 6 && sprite_index != spr_face_papyrusdejected)
    sprite_index = spr_face_papyrusdejected
if (global.faceemotion == 7 && sprite_index != spr_face_papyruswacky)
    sprite_index = spr_face_papyruswacky
if (global.faceemotion == 8 && sprite_index != spr_face_papyruscry)
    sprite_index = spr_face_papyruscry
if (global.faceemotion == 9 && sprite_index != spr_face_papyruscool)
    sprite_index = spr_face_papyruscool
if (global.faceemotion == "A" && sprite_index != spr_face_papyrus_blush)
    sprite_index = spr_face_papyrus_blush
if (global.faceemotion == "B" && sprite_index != spr_face_papyrus_mysterious)
    sprite_index = spr_face_papyrus_mysterious
if (global.faceemotion == "C" && sprite_index != spr_face_papyrus_nyeh)
    sprite_index = spr_face_papyrus_nyeh
if (global.faceemotion == "D" && sprite_index != spr_face_papyrus_sly)
    sprite_index = spr_face_papyrus_sly
if (global.faceemotion == "E" && sprite_index != spr_face_papyrus_unbelievable)
    sprite_index = spr_face_papyrus_unbelievable
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
if instance_exists(obj_dialoguer)
    depth = (obj_dialoguer.depth - 100000000000)
