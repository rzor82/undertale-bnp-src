b = argument0
c = argument1
a += 1
var bgSprite = __background_get(2, 0)
var bgHeight = sprite_get_height(bgSprite)
var bgWidth = sprite_get_width(bgSprite)
for (i = bgHeight; i > 0; i -= 1)
{
    a += 1
    if (c > 0)
        c -= 0.1
    if (c < 0)
        c -= 0.1
    draw_background_part_ext(bgSprite, 0, i, bgWidth, 1, (x + (sin((a / b)) * c)), (y + i), 1, 1, c_white, image_alpha)
}
