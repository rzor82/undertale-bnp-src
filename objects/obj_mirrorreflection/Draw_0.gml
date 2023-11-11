if (view_current == 2 && instance_exists(obj_battlebg_screenshotter) && obj_battlebg_screenshotter.active)
    return;
if instance_exists(obj_mainchara)
{
    running = obj_mainchara.running
    if (flip == 0)
        flip2 = 1
    else
        flip2 = -1
    spr = obj_mainchara.gsprite
    switch mirror_state
    {
        case 0:
            switch spr_facing
            {
                case 0:
                    if running
                        spr = obj_mainchara.usprite_run
                    else
                        spr = obj_mainchara.usprite
                    spr_facing = 2
                    break
                case 2:
                    if running
                        spr = obj_mainchara.dsprite_run
                    else
                        spr = obj_mainchara.dsprite
                    spr_facing = 0
                    break
            }

            break
        case 1:
            switch spr_facing
            {
                case 0:
                    if running
                        spr = obj_mainchara.usprite_geno_run
                    else
                        spr = obj_mainchara.usprite_geno
                    spr_facing = 2
                    break
                case 2:
                    if running
                        spr = obj_mainchara.dsprite_geno_run
                    else
                        spr = obj_mainchara.dsprite_geno
                    spr_facing = 0
                    break
            }

            break
        case 2:
            switch spr_facing
            {
                case 0:
                    if running
                        spr = spr_charau_run
                    else
                        spr = spr_charau
                    spr_facing = 2
                    break
                case 1:
                    if running
                        spr = spr_charar_run
                    else
                        spr = spr_charar
                    break
                case 2:
                    if running
                        spr = spr_charad_run
                    else
                        spr = spr_charad
                    spr_facing = 0
                    break
                case 3:
                    if running
                        spr = spr_charal_run
                    else
                        spr = spr_charal
                    break
            }

            break
        case 3:
            switch spr_facing
            {
                case 0:
                    spr = spr_maincharau_pmirr
                    spr_facing = 2
                    break
                case 1:
                    spr = spr_maincharar_pmirr
                    break
                case 2:
                    spr = spr_maincharad_pmirr
                    spr_facing = 0
                    break
                case 3:
                    spr = spr_maincharal_pmirr
                    break
            }

            break
    }

    if (fun == false)
    {
        image_alpha = obj_mainchara.image_alpha
        image_blend = obj_mainchara.image_blend
    }
    draw_sprite_ext(spr, obj_mainchara.image_index, (x + (sprite_width * flip)), y, flip2, 1, 0, image_blend, image_alpha)
    image_index = obj_mainchara.image_index
    if draw_armor
    {
        if running
            scr_draw_armor_sprites_run()
        else
            scr_draw_armor_sprites()
    }
    with (obj_soulvision)
    {
        offsetx += 1
        scr_draw_soul_vision(other)
    }
}
