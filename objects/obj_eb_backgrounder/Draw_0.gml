var block_size = (__view_get(2, 0) / num_lines)
w = (__view_get(2, 0) + (block_size * 4))
h = __view_get(3, 0)
if (surface_exists(surface) && (surface_get_width(surface) != w || surface_get_height(surface) != h))
    surface_free(surface)
if (!surface_exists(surface))
{
    surface = surface_create(w, h)
    surface_set_target(surface)
    draw_clear_alpha(c_black, 0)
    draw_set_alpha(1)
    draw_set_color(c_white)
    for (i = 0; i < (num_lines + 4); i++)
    {
        var left_side = ((block_size * i) + ((block_size / 2) - (line_width / 2)))
        draw_rectangle(left_side, 0, (left_side + line_width), __view_get(3, 0), false)
    }
    surface_reset_target()
}
for (i = 0; i < h; i++)
{
    var offset = ((amp * sin(((freq * i) + (fskip * t)))) + ((1 - (i / (__view_get(3, 0) / 2))) * smear))
    draw_surface_part(surface, (block_size + hoffset), i, w, 1, (__view_get(0, 0) + (offset - block_size)), (__view_get(1, 0) + i))
}
var col1 = make_color_hsv((color % 256), sat, 255)
var col2 = make_color_hsv(((color + 64) % 256), sat, 255)
var col3 = make_color_hsv(((color + 128) % 256), sat, 255)
var col4 = make_color_hsv(((color + 192) % 256), sat, 255)
comment = "Not a typo. This is needed for the blend mode thing to work."
draw_set_alpha(0)
draw_set_blend_mode_ext(bm_src_alpha, bm_inv_src_color)
draw_rectangle_color(__view_get(0, 0), __view_get(1, 0), __view_get(2, 0), __view_get(3, 0), col1, col2, col3, col4, 0)
draw_set_blend_mode(bm_normal)
draw_set_alpha(1)
if (abs(horiz_speed) > block_size)
    horiz_speed %= block_size
hoffset += horiz_speed
if (hoffset > block_size)
    hoffset -= block_size
if (hoffset < (-block_size))
    hoffset += block_size
t += vert_speed
color++
