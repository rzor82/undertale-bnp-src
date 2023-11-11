if (con == 0)
    return;
else if do_ss_draw
{
    var xx = __view_get(0, 0)
    var yy = __view_get(1, 0)
    draw_sprite_ext(ss, 0, xx, yy, ss_scale, ss_scale, 0, c_white, 1)
}
else
{
    if (con == 12 && global.flag[500] == 0 && (!flowey) && instance_exists(obj_gameoverbg))
        draw_sprite_ext(spr_mainchara_die_light, 0, ((__view_get(2, 0) - beam_w) / 2), 0, image_xscale, image_yscale, 0, c_white, obj_gameoverbg.image_alpha)
    draw_self()
    if (con == 7)
    {
        with (target_obj)
            image_alpha = other.image_alpha
        draw_sprite_ext(heart_sprite, 0, target_obj.x, target_obj.y, 1, 1, target_obj.image_angle, image_blend, (1 - image_alpha))
    }
    if svision_draw
        draw_sprite_ext(spr_maincharau_svision, 0, (x - 1), (y - 1), image_xscale, image_yscale, 0, image_blend, svision_alpha)
}
if (global.debug && debug_draw)
{
    with (target_obj)
    {
        if visible
        {
            draw_set_alpha(1)
            draw_set_color(c_yellow)
            draw_set_font(fnt_maintext)
            draw_text(x, (y - 20), ((string(other.con) + " ") + sprite_get_name(other.heart_sprite)))
            if (global.flag[500] == 1)
                draw_text(x, (y - 30), ((((((string(heartcon) + " ") + string(hearttimer)) + " ") + string(other.shake_time)) + " ") + string(other.collapse_time)))
        }
    }
}
