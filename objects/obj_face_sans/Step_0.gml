if (visor == 1)
{
    if (global.faceemotion == 0 && sprite_index != spr_face_sans_visor)
        sprite_index = spr_face_sans_visor
    if (global.faceemotion == 1 && sprite_index != spr_face_sanschuckle_visor)
        sprite_index = spr_face_sanschuckle_visor
    if (global.faceemotion == 2 && sprite_index != spr_face_sanswink_visor)
        sprite_index = spr_face_sanswink_visor
    if (global.faceemotion == 3 && sprite_index != spr_face_sansblink_visor)
        sprite_index = spr_face_sansblink_visor
    if (global.faceemotion == 4 && sprite_index != spr_face_sansnoeyes_visor)
        sprite_index = spr_face_sansnoeyes_visor
    if ((global.faceemotion == 5 && sprite_index != spr_face_sanschuckle2_visor) || (global.faceemotion == 5 && sprite_index != spr_face_sanschuckle3_visor))
    {
        if (chucklekind == 0)
            sprite_index = spr_face_sanschuckle2_visor
        if (chucklekind == 1)
            sprite_index = spr_face_sanschuckle3_visor
    }
    if (global.faceemotion == 6 && sprite_index != spr_face_sansbedroomeyes_visor)
        sprite_index = spr_face_sansbedroomeyes_visor
    if (global.faceemotion == 7 && sprite_index != spr_face_sanswhatdude_visor)
        sprite_index = spr_face_sanswhatdude_visor
    if (global.faceemotion == 8 && sprite_index != spr_face_sanswhatdude_noeyes_visor)
        sprite_index = spr_face_sanswhatdude_noeyes_visor
    if (global.faceemotion == 9 && sprite_index != spr_face_sansdont_visor)
        sprite_index = spr_face_sansdont_visor
}
else
{
    if (global.faceemotion == 0 && sprite_index != spr_face_sans)
        sprite_index = spr_face_sans
    if (global.faceemotion == 1 && sprite_index != spr_face_sanschuckle)
        sprite_index = spr_face_sanschuckle
    if (global.faceemotion == 2 && sprite_index != spr_face_sanswink)
        sprite_index = spr_face_sanswink
    if (global.faceemotion == 3 && sprite_index != spr_face_sansblink)
        sprite_index = spr_face_sansblink
    if (global.faceemotion == 4 && sprite_index != spr_face_sansnoeyes)
        sprite_index = spr_face_sansnoeyes
    if ((global.faceemotion == 5 && sprite_index != spr_face_sanschuckle2) || (global.faceemotion == 5 && sprite_index != spr_face_sanschuckle3))
    {
        if (chucklekind == 0)
            sprite_index = spr_face_sanschuckle2
        if (chucklekind == 1)
            sprite_index = spr_face_sanschuckle3
    }
    if (global.faceemotion == 6 && sprite_index != spr_face_sansbedroomeyes)
        sprite_index = spr_face_sansbedroomeyes
    if (global.faceemotion == 7 && sprite_index != spr_face_sanswhatdude)
        sprite_index = spr_face_sanswhatdude
    if (global.faceemotion == 8 && sprite_index != spr_face_sanswhatdude_noeyes)
        sprite_index = spr_face_sanswhatdude_noeyes
    if (global.faceemotion == 9 && sprite_index != spr_face_sansdont)
        sprite_index = spr_face_sansdont
}
if instance_exists(obj_dialoguer)
    depth = (obj_dialoguer.depth - 100000000000)
