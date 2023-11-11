if (scr_murderlv() < 2)
{
    if (draw_armor == 1 && global.flag[85] == 0)
    {
        if (object_index != obj_mirrorreflection)
        {
            spr_facing = 0
            spr_name = sprite_get_name(sprite_index)
            if (string_pos("maincharar", spr_name) != 0)
                spr_facing = 1
            else if (string_pos("maincharau", spr_name) != 0)
                spr_facing = 2
            else if (string_pos("maincharal", spr_name) != 0)
                spr_facing = 3
            else
                spr_facing = 0
        }
        flip2 = 1
        if (flip == 0)
            flip2 = 1
        else
            flip2 = -1
        switch global.armor
        {
            case 46:
                switch spr_facing
                {
                    case 0:
                        draw_sprite_ext(spr_aprond_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 1:
                        draw_sprite_ext(spr_apronr_run, image_index, ((x + (sprite_width * flip)) + 1), (y + 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 2:
                        draw_sprite_ext(spr_apronu_run, image_index, (x + (sprite_width * flip)), y, flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 3:
                        draw_sprite_ext(spr_apronl_run, image_index, (x + (sprite_width * flip)), y, flip2, 1, 0, image_blend, image_alpha)
                        break
                }

                break
            case 4:
                switch spr_facing
                {
                    case 0:
                        draw_sprite_ext(spr_bandaged_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 1:
                        draw_sprite_ext(spr_bandager_run, image_index, ((x + (sprite_width * flip)) - 1), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                }

                break
            case 48:
                switch spr_facing
                {
                    case 0:
                        draw_sprite_ext(spr_cowboyhatd_run, image_index, (x + (sprite_width * flip)), (y - 2), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 1:
                        draw_sprite_ext(spr_cowboyhatr_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 2:
                        draw_sprite_ext(spr_cowboyhatu_run, image_index, (x + (sprite_width * flip)), (y - 2), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 3:
                        draw_sprite_ext(spr_cowboyhatl_run, image_index, ((x + (sprite_width * flip)) - 1), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                }

                break
            case 44:
                switch spr_facing
                {
                    case 0:
                        draw_sprite_ext(spr_glassesd_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 1:
                        draw_sprite_ext(spr_glassesr_run, image_index, ((x + (sprite_width * flip)) + 1), y, flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 3:
                        draw_sprite_ext(spr_glassesl_run, image_index, ((x + (sprite_width * flip)) - 1), y, flip2, 1, 0, image_blend, image_alpha)
                        break
                }

                break
            case 50:
            case 53:
                switch spr_facing
                {
                    case 0:
                        draw_sprite_ext(spr_locketd_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 1:
                        draw_sprite_ext(spr_locketr_run, image_index, ((x + (sprite_width * flip)) - 1), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 2:
                        draw_sprite_ext(spr_locketu_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 3:
                        draw_sprite_ext(spr_locketl_run, image_index, ((x + (sprite_width * flip)) + 1), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                }

                break
            case 15:
                switch spr_facing
                {
                    case 0:
                        draw_sprite_ext(spr_mbandanad_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 1:
                        draw_sprite_ext(spr_mbandanar_run, image_index, ((x + (sprite_width * flip)) + 1), y, flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 2:
                        draw_sprite_ext(spr_mbandanau_run, image_index, ((x + (sprite_width * flip)) - 1), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 3:
                        draw_sprite_ext(spr_mbandanal_run, image_index, ((x + (sprite_width * flip)) - 1), y, flip2, 1, 0, image_blend, image_alpha)
                        break
                }

                break
            case 12:
                switch spr_facing
                {
                    case 0:
                        draw_sprite_ext(spr_ribbond_run, image_index, (x + (sprite_width * flip)), y, flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 1:
                        if flip_x
                            draw_sprite_ext(spr_ribbonl_run, image_index, (x + sprite_width), (y - 1), -1, 1, 0, image_blend, image_alpha)
                        break
                    case 3:
                        if (!flip_x)
                            draw_sprite_ext(spr_ribbonl_run, image_index, ((x + (sprite_width * flip)) - 1), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                }

                break
            case 64:
                switch spr_facing
                {
                    case 0:
                        draw_sprite_ext(spr_temarmord_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 1:
                        draw_sprite_ext(spr_temarmorr_run, image_index, (x + (sprite_width * flip)), y, flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 2:
                        draw_sprite_ext(spr_temarmoru_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 3:
                        draw_sprite_ext(spr_temarmorl_run, image_index, (x + (sprite_width * flip)), y, flip2, 1, 0, image_blend, image_alpha)
                        break
                }

                break
            case 24:
                switch spr_facing
                {
                    case 0:
                        draw_sprite_ext(spr_tutud_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 1:
                        draw_sprite_ext(spr_tutur_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 2:
                        draw_sprite_ext(spr_tutuu_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                    case 3:
                        draw_sprite_ext(spr_tutul_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                        break
                }

                break
        }

        if (global.flag[28] == 1)
        {
            switch spr_facing
            {
                case 0:
                    draw_sprite_ext(spr_wrprotectd_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                    break
                case 1:
                    if flip_x
                        draw_sprite_ext(spr_wrprotectl_run, image_index, ((x + sprite_width) - 1), y, -1, 1, 0, image_blend, image_alpha)
                    break
                case 2:
                    draw_sprite_ext(spr_wrprotectu_run, image_index, (x + (sprite_width * flip)), (y - 1), flip2, 1, 0, image_blend, image_alpha)
                    break
                case 3:
                    if (!flip_x)
                        draw_sprite_ext(spr_wrprotectl_run, image_index, (x + (sprite_width * flip)), y, flip2, 1, 0, image_blend, image_alpha)
                    break
            }

        }
    }
}
