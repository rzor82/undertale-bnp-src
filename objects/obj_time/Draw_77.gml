if ((!instance_exists(obj_borderdrawer)) || (!obj_borderdrawer.suppress))
{
    var ww = window_get_width()
    var wh = window_get_height()
    var sw = surface_get_width(application_surface)
    var sh = surface_get_height(application_surface)
    var SW = window_get_width()
    var SH = window_get_height()
    var SX = (SW / 960)
    var SY = (SH / 540)
    var SF = min(SX, SY)
    var xx = floor(((SW - (sw * global.window_scale)) / 2))
    var yy = floor(((SH - (sh * global.window_scale)) / 2))
    global.window_xofs = xx
    global.window_yofs = yy
    if (os_type == os_switch_beta && sw == 720)
        texture_set_interpolation(true)
    else
        texture_set_interpolation(false)
    if (global.screen_border_active && global.screen_border_alpha > 0)
    {
        draw_enable_alphablend(true)
        scr_draw_screen_border(global.screen_border_id)
        if (global.screen_border_alpha < 1)
        {
            draw_set_alpha((1 - global.screen_border_alpha))
            draw_set_color(c_black)
            ossafe_fill_rectangle(0, 0, (sw - 1), (sh - 1))
            draw_set_alpha(1)
            draw_set_color(c_white)
        }
    }
    draw_enable_alphablend(false)
    if (global.tobyglitchfx == 1)
    {
        for (var i = 0; i < sh; i += 2)
            draw_surface_part_ext(application_surface, 0, i, sw, 2, ((xx + floor(random((2 + global.tobyshake)))) - floor(random((2 + global.tobyshake)))), (yy + i), global.window_scale, global.window_scale, 16777215, 1)
    }
    else if (global.mirrormodesetting == 1 && surface_exists(application_surface))
        draw_surface_ext(application_surface, (xx + (surface_get_width(application_surface) * global.window_scale)), yy, (-global.window_scale), global.window_scale, 0, c_white, 1)
    else
        draw_surface_ext(application_surface, xx, yy, global.window_scale, global.window_scale, 0, c_white, 1)
    draw_enable_alphablend(true)
    texture_set_interpolation(false)
}
if (started < 0 && trophy_ts > 0 && (current_time - trophy_ts) >= 2000)
{
    scr_setfont(fnt_main)
    var lineheight = 32
    if (global.language == "ja")
        lineheight = 36
    var line1 = scr_gettext("trophy_install")
    var dot = scr_gettext("trophy_install_dot")
    var line2 = scr_gettext("trophy_install_line2")
    var width1 = string_width(string_hash_to_newline((((line1 + dot) + dot) + dot)))
    var width2 = string_width(string_hash_to_newline(line2))
    var width = max(width1, width2)
    xx = ((window_get_width() - 10) - width)
    yy = 10
    for (i = 0; i < (floor(((current_time - trophy_ts) / 500)) % 4); i++)
        line1 += dot
    draw_set_color(c_white)
    draw_text(xx, yy, string_hash_to_newline(line1))
    draw_text(xx, (yy + lineheight), string_hash_to_newline(line2))
}
if (global.tobyshake > 0)
    global.tobyshake -= 0.5
if (quit >= 1)
{
    if (global.language == "ja")
        draw_sprite_ext(spr_quittingmessage_ja, (quit / 7), 4, 4, 2, 2, 0, c_white, (quit / 15))
    else
        draw_sprite_ext(spr_quittingmessage, (quit / 7), 4, 4, 2, 2, 0, c_white, (quit / 15))
}
if (dimcon == 1)
{
    draw_set_color(c_black)
    draw_set_alpha(0.5)
    ossafe_fill_rectangle(-10, -10, (window_get_width() + 700), (window_get_height() + 700))
    draw_set_alpha(1)
}
