event_inherited()
depth = -555
image_speed = 0.25
if instance_exists(obj_face_sans)
{
    with (obj_face_sans)
        instance_destroy()
}
if instance_exists(obj_face_undyne)
{
    with (obj_face_undyne)
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
if (room == room_water_farm)
{
    switch global.faceemotion
    {
        case 0:
            sprite_index = spr_face_napsta_visor
            break
        case 1:
            sprite_index = spr_face_napsta_smile_visor
            break
        case 2:
            sprite_index = spr_face_napsta_visor
            break
        case 3:
            sprite_index = spr_face_napsta_smile_visor
            break
        default:
            sprite_index = spr_face_napsta_visor
            break
    }

}
else
{
    switch global.faceemotion
    {
        case 0:
            sprite_index = spr_face_napsta
            break
        case 1:
            sprite_index = spr_face_napsta_smile
            break
        case 2:
            sprite_index = spr_face_napsta_headphone
            break
        case 3:
            sprite_index = spr_face_napsta_smile_headphone
            break
        default:
            sprite_index = spr_face_napsta
            break
    }

}
