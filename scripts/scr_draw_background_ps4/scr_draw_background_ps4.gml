var BG = argument0
var SW = window_get_width()
var SH = window_get_height()
var SX = (SW / 960)
var SY = (SH / 540)
var SF = min(SX, SY)
var scale = (window_get_width() / 1920)
if (scale > 1)
    draw_sprite_ext(BG, 0, ((SW - (960 * SF)) / 2), ((SH - (540 * SF)) / 2), ((960 / sprite_get_width(BG)) * SF), ((540 / sprite_get_height(BG)) * SF), 0, c_white, image_alpha)
else
    draw_background_stretched(BG, (SX * scale), (SY * scale), (background_get_width(BG) * scale), (background_get_height(BG) * scale))
