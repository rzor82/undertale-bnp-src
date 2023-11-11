s = argument0
b = argument1
c = argument2
var sw = surface_get_width(s)
var sh = surface_get_height(s)
a += 1
for (i = sh; i > 0; i -= 1)
{
    a += 1
    if (c > 0)
        c -= 0.1
    if (c < 0)
        c -= 0.1
    draw_surface_part_ext(s, 0, i, sw, 1, (x + (sin((a / b)) * c)), (y + i), 1, 1, image_blend, image_alpha)
}
