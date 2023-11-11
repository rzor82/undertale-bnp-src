var xx = argument0
var yy = argument1
var text = argument2
var xscale = argument3
var yscale = argument4
var display_scale = (surface_get_width(application_surface) / __view_get(2, view_current))
var lineheight = round((string_height(string_hash_to_newline(" ")) * yscale))
var eol = string_pos("#", text)
yy = (round((yy * display_scale)) / display_scale)
while (eol != 0)
{
    var line = substr(text, 1, eol)
    text = substr(text, (eol + 1))
    var width = (string_width(string_hash_to_newline(line)) * xscale)
    var line_x = (round(((xx - (width / 2)) * display_scale)) / display_scale)
    draw_text_transformed(line_x, yy, string_hash_to_newline(line), xscale, yscale, 0)
    yy += lineheight
    eol = string_pos("#", text)
}
width = (string_width(string_hash_to_newline(text)) * xscale)
draw_text_transformed(round((xx - (width / 2))), yy, string_hash_to_newline(text), xscale, yscale, 0)
