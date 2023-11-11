if instance_exists(obj_mainchara)
{
    y = (horizon - (obj_mainchara.y - horizon))
    if (y < ceiling)
        y = ceiling
    spr_name = sprite_get_name(obj_mainchara.sprite_index)
    if (string_pos("maincharad", spr_name) != 0)
        spr_facing = 0
    else if (string_pos("maincharar", spr_name) != 0)
        spr_facing = 1
    else if (string_pos("maincharau", spr_name) != 0)
        spr_facing = 2
    else
        spr_facing = 3
    switch spr_facing
    {
        case 0:
        case 2:
            flip = 1
            break
        case 1:
        case 3:
            flip = 0
            break
    }

    x = (obj_mainchara.x - flip)
    if (room == room_water_mirror)
        flip = 0
}
