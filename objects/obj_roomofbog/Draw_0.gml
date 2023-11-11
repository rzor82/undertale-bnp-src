if (bganimer == 1)
{
    bgsiner += 1
    draw_set_color(make_color_rgb(abs(((sin((bgsiner / 8)) * 130) / dividefactor)), 0, abs(((sin((bgsiner / 8)) * 130) / dividefactor))))
    if instance_exists(obj_expander)
    {
        with (obj_expander)
            ossafe_fill_rectangle((-diffx), (-diffy), window_get_width(), window_get_height())
    }
    else
        ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_color(c_white)
    draw_sprite_ext(sprite_index, image_index, (x + ((random(4) - random(4)) / dividefactor)), (y + ((random(4) - random(4)) / dividefactor)), image_xscale, image_yscale, image_angle, ib, image_alpha)
}
else
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_set_color(c_white)
if (display_binfo >= 1)
{
    draw_set_color(merge_color(c_red, c_maroon, 0.5))
    ossafe_fill_rectangle(435, 500, (435 + (global.dmaxhp * 1.2)), 520)
    draw_set_color(c_yellow)
    ossafe_fill_rectangle(435, 500, (435 + (global.dhp * 1.2)), 520)
    draw_set_color(c_white)
    draw_set_font(fnt_curs)
    hpwrite = string(global.dhp)
    if (global.hp < 10)
        hpwrite = ("0" + string(global.dhp))
    if (global.hp < 0)
        hpwrite = "0"
    draw_text((450 + (global.dmaxhp * 1.2)), 500, string_hash_to_newline(((hpwrite + " / ") + string(global.dmaxhp))))
    draw_sprite(spr_hpname, 0, 390, 500)
    if (display_binfo == 2)
    {
        draw_set_color(c_black)
        ossafe_fill_rectangle(9, 9, 951, 11)
        draw_set_color(c_dkgray)
        ossafe_fill_rectangle(10, 10, 950, 10)
        draw_set_color(c_lime)
        ossafe_fill_rectangle(10, 10, ceil(((global.bhp / global.bmaxhp) * 950)), 20)
        draw_set_halign(fa_center)
        draw_set_font(fnt_main)
        draw_set_color(c_lime)
        draw_text(480, 30, "TOBY FOX")
    }
}
draw_set_color(c_white)
draw_set_font(fnt_main)
if (n_alpha > 0)
{
    for (i = 0; i < 6; i += 1)
    {
        xx = __view_get(0, 0)
        yy = __view_get(1, 0)
        if instance_exists(obj_expander)
        {
            draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 30) + (i * 200)), (-40 + yy), 2, 2, 0, c_white, n_alpha)
            draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 30) + (i * 200)), (160 + yy), 2, 2, 0, c_white, n_alpha)
            draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 30) + (i * 200)), (360 + yy), 2, 2, 0, c_white, n_alpha)
        }
        draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 10) + (i * 200)), (-10 + yy), 2, 2, 0, c_white, n_alpha)
        draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 10) + (i * 200)), (190 + yy), 2, 2, 0, c_white, n_alpha)
        draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 10) + (i * 200)), (390 + yy), 2, 2, 0, c_white, n_alpha)
    }
}
draw_set_halign(fa_left)
