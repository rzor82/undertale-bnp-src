event_inherited()
depth = -555
image_speed = 0.21
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
if instance_exists(obj_face_papyrus)
{
    with (obj_face_papyrus)
        instance_destroy()
}
switch global.faceemotion
{
    case 0:
        sprite_index = spr_face_mkid
        break
    case 1:
        sprite_index = spr_face_mkid_mad
        break
    case 2:
        sprite_index = spr_face_mkid_nyeh
        break
    case 3:
        sprite_index = spr_face_mkid_side
        break
    case 4:
        sprite_index = spr_face_mkid_dejected
        break
    case 5:
        sprite_index = spr_face_mkid_concern
        break
    case 6:
        sprite_index = spr_face_mkid_sideoh
        break
    case 7:
        sprite_index = spr_face_mkid_madish
        break
    case 8:
        sprite_index = spr_face_mkid_starstruck
        break
    case 9:
        sprite_index = spr_face_mkid_oh
        break
    default:
        sprite_index = spr_face_mkid
        break
}

