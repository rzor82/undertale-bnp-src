if (argument_count == 0)
    var obj = object_index
else
    obj = argument0
if (instance_exists(obj_soulvision) && instance_exists(obj))
{
    var scale = 1
    var spr_name = sprite_get_name((variable_instance_exists(obj, "gsprite") ? obj.gsprite : obj.sprite_index))
    var shadow = spr_maincharar_svision
    if (string_pos("maincharad", spr_name) > 0)
        shadow = spr_maincharad_svision
    else if (instance_exists(obj_mainchara) && (obj_mainchara.callsprite != 0 || string_pos("mainchara_call", spr_name) > 0))
        shadow = spr_mainchara_svision_call
    else if (string_pos("maincharar", spr_name) > 0)
    {
        shadow = spr_maincharar_svision
        shadow_xoffset += 1
        shadow_yoffset += 1
        offset += 1
    }
    else if (string_pos("maincharau", spr_name) > 0)
        shadow = spr_maincharau_svision
    else if (string_pos("maincharal", spr_name) > 0)
    {
        shadow = spr_maincharal_svision
        shadow_xoffset += 1
        shadow_yoffset += 1
        offset -= 1
    }
    else if (global.facing == 0)
        shadow = spr_maincharad_svision
    else if (global.facing == 1)
    {
        shadow = spr_maincharar_svision
        shadow_xoffset += 1
        shadow_yoffset += 1
        offset += 1
    }
    else if (global.facing == 2)
        shadow = spr_maincharau_svision
    else if (global.facing == 3)
    {
        shadow = spr_maincharal_svision
        shadow_xoffset += 1
        shadow_yoffset += 1
        offset -= 1
    }
    runningiseveraddedback = 0
    if (runningiseveraddedback == 1 && obj.object_index == obj_mainchara && obj.running && scr_murderlv() < 1)
    {
        if (shadow == spr_maincharau_svision)
            shadow_yoffset -= 1
        shadow = asset_get_index((sprite_get_name(shadow) + "_run"))
        shadow_yoffset -= 1
    }
    if (darken || draw_override)
    {
        draw_sprite_ext(shadow, obj.image_index, ((obj.x + shadow_xoffset) + offsetx), ((obj.y + shadow_yoffset) + offsety), scale, scale, obj.image_angle, obj_soulvision.image_blend, salpha)
        if ((!instance_exists(obj_transheart)) && (!instance_exists(obj_floweybattler2)) && (do_flicker == 1 || (!instance_exists(obj_overworldbattler))))
        {
            var hoffsetx = (offset + offsetx)
            var hoffsety = (17 + offsety)
            with (obj)
            {
                if (image_angle != 0)
                {
                    rad = (image_angle * 0.0174532925199433)
                    hoffsetx = ((cos(rad) * hoffsetx) + (sin(rad) * hoffsety))
                    hoffsety = ((sin(rad) * hoffsetx) + (cos(rad) * hoffsety))
                    if (global.debug == true)
                    {
                        draw_set_color(c_aqua)
                        draw_set_font(fnt_small)
                        draw_text(x, (y - 20), ((string(hoffsetx) + " ") + string(hoffsety)))
                    }
                }
            }
            halpha = salpha
            if do_flicker
            {
                if (flicker_state > 1)
                {
                    draw_sprite_ext(spr_heart_svision, 1, (obj.x + hoffsetx), (obj.y + hoffsety), scale, scale, obj.image_angle, c_black, halpha)
                    halpha /= 2
                }
            }
            draw_sprite_ext(spr_heart_svision, 1, (obj.x + hoffsetx), (obj.y + hoffsety), scale, scale, obj.image_angle, obj_soulvision.image_blend, halpha)
        }
    }
}
