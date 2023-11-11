event_inherited()
image_speed = 0.25
if instance_exists(obj_face_undyne)
{
    with (obj_face_undyne)
        instance_destroy()
}
if instance_exists(obj_face_papyrus)
{
    with (obj_face_papyrus)
        instance_destroy()
}
if instance_exists(obj_face_alphys)
{
    with (obj_face_alphys)
        instance_destroy()
}
if instance_exists(obj_face_asgore)
{
    with (obj_face_asgore)
        instance_destroy()
}
if instance_exists(obj_face_torieltalk)
{
    with (obj_face_torieltalk)
        instance_destroy()
}
if instance_exists(obj_face_torielblink)
{
    with (obj_face_torielblink)
        instance_destroy()
}
if instance_exists(obj_torbody)
{
    with (obj_torbody)
        instance_destroy()
}
if instance_exists(obj_face_mettaton)
{
    with (obj_face_mettaton)
        instance_destroy()
}
visor = 0
chucklekind = choose(0, 1)
if (room == room_tundra8 || room == room_fire_hotdog)
    visor = 1
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
    if (global.faceemotion == 9 && sprite_index != spr_face_sans_visor)
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
    if (global.faceemotion == 9 && sprite_index != spr_face_sans)
        sprite_index = spr_face_sansdont
}
