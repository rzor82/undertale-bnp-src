if instance_exists(OBJ_WRITER)
{
    if (OBJ_WRITER.halt != false)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.21
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

if instance_exists(obj_dialoguer)
    depth = (obj_dialoguer.depth - 100000000000)
