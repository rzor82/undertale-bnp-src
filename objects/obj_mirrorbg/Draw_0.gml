var w = sprite_get_width(sprite_index)
var h = sprite_get_height(sprite_index)
var xx = __view_get(0, 0)
var yy = __view_get(1, 0)
sat = clamp(lerp(old_sat, new_sat, sat_amt), -1, 1)
if (sat_amt < 1)
    sat_amt += sat_speed
if (blend_amt < 1)
    blend_amt += blend_speed
if (mode != 2)
{
    image_blend = merge_color(old_blend, new_blend, blend_amt)
    rem_timer = timer
    rem_siner = siner
}
if shaderless
{
    if ((!sprite_exists(grayscale_sprite)) || sprite_index != spr)
    {
        sprite_delete(grayscale_sprite)
        grayscale_sprite = scr_make_grayscale()
        spr = sprite_index
    }
    var real_sat = clamp((sat + 1), 0, 1)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    draw_sprite_ext(grayscale_sprite, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, (1 - real_sat))
}
else
{
    if (!init)
    {
        tex_size = shader_get_uniform(sh_distort, "tex_size")
        axis_mode = shader_get_uniform(sh_distort, "axis_mode")
        axis_shift = shader_get_uniform(sh_distort, "axis_shift")
        axis_frequency = shader_get_uniform(sh_distort, "axis_frequency")
        axis_amplitude = shader_get_uniform(sh_distort, "axis_amplitude")
        saturation = shader_get_uniform(sh_saturation, "saturation")
        init = true
    }
    if ((!sprite_exists(sprite)) || sprite_index != spr)
    {
        sprite_delete(sprite)
        var sprite_surf = surface_create((w * 3), (h * 3))
        surface_set_target(sprite_surf)
        draw_clear_alpha(c_black, 0)
        draw_set_alpha(1)
        for (var i = 0; i < 3; i++)
        {
            for (var j = 0; j < 3; j++)
                draw_sprite(sprite_index, 0, (w * i), (h * j))
        }
        surface_reset_target()
        sprite = sprite_create_from_surface(sprite_surf, 0, 0, (w * 3), (h * 3), false, false, 0, 0)
        scr_add_temp_sprite(sprite)
        surface_free(sprite_surf)
        surface_free(surface)
        spr = sprite_index
    }
    if (!surface_exists(surface))
        surface = surface_create(w, h)
    surface_set_target(surface)
    draw_clear_alpha(bg_color, 1)
    shader_set(sh_distort)
    shader_set_uniform_f(tex_size, w, h)
    shader_set_uniform_f(axis_mode, mode, -1)
    shader_set_uniform_f(axis_frequency, 16, 0)
    shader_set_uniform_f(axis_amplitude, (16 * sin(rem_siner)), 0)
    shader_set_uniform_f(axis_shift, (rem_timer % w), 0)
    draw_sprite_ext(sprite, 0, (-w), (-h), 1, 1, 0, (blend ? image_blend : c_white), image_alpha)
    shader_reset()
    surface_reset_target()
    shader_set(sh_saturation)
    shader_set_uniform_f(saturation, sat, 0)
    draw_surface_ext(surface, xx, yy, 1, 1, 0, c_white, 0.5)
    draw_surface_ext(surface, xx, (yy + h), 1, -1, 0, c_white, 0.5)
    shader_reset()
}
timer += tick_speed
siner += sin_speed
