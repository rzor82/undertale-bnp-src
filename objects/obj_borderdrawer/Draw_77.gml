var ww = window_get_width()
var wh = window_get_height()
var sw = surface_get_width(application_surface)
var sh = surface_get_height(application_surface)
var xx = floor(((ww - (sw * global.window_scale)) / 2))
var yy = floor(((wh - (sh * global.window_scale)) / 2))
global.window_xofs = xx
global.window_yofs = yy
if (os_type == os_switch_beta && wh == 720)
    texture_set_interpolation(true)
else
    texture_set_interpolation(false)
suppress = 1
if cosmos
{
    image_alpha = obj_fx_waver.image_alpha
    sprite_index = obj_fx_waver.sprite_index
    image_xscale = (window_get_width() / sprite_get_width(sprite_index))
    image_yscale = (window_get_height() / sprite_get_height(sprite_index))
    a = obj_fx_waver.a
    scr_fx_waver(obj_fx_waver.b, obj_fx_waver.c, obj_fx_waver.d, obj_fx_waver.e)
    image_alpha = 0
}
else if (active && alpha > 0)
{
    scr_draw_screen_border(border, color)
    if (alpha < 1)
    {
        draw_set_alpha((1 - alpha))
        draw_set_color(c_black)
        ossafe_fill_rectangle(0, 0, (ww - 1), (wh - 1))
        draw_set_alpha(1)
        draw_set_color(c_white)
    }
}
else
    suppress = 0
draw_enable_alphablend(false)
draw_surface_ext(application_surface, xx, yy, global.window_scale, global.window_scale, 0, c_white, 1)
draw_enable_alphablend(true)
texture_set_interpolation(false)
