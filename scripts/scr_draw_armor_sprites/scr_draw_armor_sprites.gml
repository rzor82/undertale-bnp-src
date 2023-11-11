if (draw_armor == 1 && global.flag[85] == 0)
{
    real_x = x
    real_y = y
    real_index = image_index
    flip2 = 1
    if (flip == 0)
        flip2 = 1
    else
        flip2 = -1
    if (object_index != obj_mirrorreflection)
    {
        spr_facing = 0
        if (object_index == obj_puddle)
            spr_name = sprite_get_name(obj_mainchara.sprite_index)
        else
            spr_name = sprite_get_name(sprite_index)
        if (string_pos("maincharar", spr_name) != 0)
            spr_facing = 1
        else if (string_pos("maincharau", spr_name) != 0)
            spr_facing = 2
        else if (string_pos("maincharal", spr_name) != 0)
            spr_facing = 3
        else if (string_pos("mainchara_undynesit", spr_name) != 0)
            spr_facing = 2
        else if (string_pos("mainchara_sanssit", spr_name) != 0)
            spr_facing = 2
        else
            spr_facing = 0
    }
    if (object_index == obj_puddle)
    {
        flip_y2 = 0
        if (flip_y == -1)
            flip_y2 = 1
        if instance_exists(obj_mainchara)
        {
            real_x = obj_mainchara.x
            real_y = (obj_mainchara.y + 31)
            real_index = obj_mainchara.image_index
        }
    }
    if inwater
    {
        arm_y = (real_y + 5)
        arm_h = 5
    }
    else
    {
        arm_y = real_y
        arm_h = 0
    }
    var armor = -4
    var offset_x = 0
    var offset_y = 0
    var flip_facing = 0
    var ignore_water = 0
    var special = false
    switch global.armor
    {
        case 46:
            armor = "apron"
            break
        case 4:
            armor = "bandage"
            ignore_water = 1
            break
        case 48:
            armor = "cowboyhat"
            ignore_water = 1
            offset_y = -1
            break
        case 44:
            armor = "glasses"
            ignore_water = 1
            flip_facing = 1
            break
        case 50:
        case 53:
            armor = "locket"
            ignore_water = 1
            break
        case 15:
            armor = "mbandana"
            ignore_water = 1
            break
        case 12:
            armor = "ribbon"
            ignore_water = 1
            flip_facing = object_index != obj_mirrorreflection
            special = true
            break
        case 64:
            armor = "temarmor"
            break
        case 24:
            armor = "tutu"
            break
    }

    var real_facing = spr_facing
    if (flip_facing && (spr_facing % 2))
        spr_facing = ((spr_facing + 2) % 4)
    switch spr_facing
    {
        case 0:
            armor += "d"
            break
        case 1:
            armor += "r"
            break
        case 2:
            armor += "u"
            break
        case 3:
            armor += "l"
            break
    }

    var spr = asset_get_index(("spr_" + armor))
    if sprite_exists(spr)
    {
        if ((!ignore_water) && inwater)
            draw_sprite_part(spr, real_index, 0, 0, sprite_get_width(spr), (sprite_get_height(spr) - arm_h), real_x, arm_y)
        else if (special && spr_facing == 1 && flip_x)
            draw_sprite_ext(spr, real_index, ((real_x + sprite_width) - 1), (arm_y + (sprite_get_height(spr) * flip_y2)), -1, flip_y, 0, image_blend, image_alpha)
        else if ((!special) || spr_facing != 3 || (!flip_x))
            draw_sprite_ext(spr, real_index, ((real_x + (sprite_width * flip)) + offset_x), (arm_y + ((sprite_get_height(spr) * flip_y2) + offset_y)), flip2, flip_y, 0, image_blend, image_alpha)
    }
    spr_facing = real_facing
    spr_name2 = sprite_get_name(sprite_index)
    if (string_pos("mainchara_phonecall", spr_name2) == 0)
    {
        if (global.flag[28] == 1)
        {
            switch spr_facing
            {
                case 0:
                    draw_sprite_ext(spr_wrprotectd, real_index, (real_x + (sprite_width * flip)), (arm_y + (sprite_get_height(spr_wrprotectd) * flip_y2)), flip2, flip_y, 0, image_blend, image_alpha)
                    break
                case 1:
                    if flip_x
                        draw_sprite_ext(spr_wrprotectl, real_index, ((real_x + sprite_width) - 1), (arm_y + (sprite_get_height(spr_wrprotectl) * flip_y2)), -1, flip_y, 0, image_blend, image_alpha)
                    break
                case 2:
                    draw_sprite_ext(spr_wrprotectu, real_index, (real_x + (sprite_width * flip)), (arm_y + (sprite_get_height(spr_wrprotectu) * flip_y2)), flip2, flip_y, 0, image_blend, image_alpha)
                    break
                case 3:
                    if (!flip_x)
                        draw_sprite_ext(spr_wrprotectl, real_index, (real_x + (sprite_width * flip)), (arm_y + (sprite_get_height(spr_wrprotectl) * flip_y2)), flip2, flip_y, 0, image_blend, image_alpha)
                    break
            }

        }
    }
}
comment = "pain"
