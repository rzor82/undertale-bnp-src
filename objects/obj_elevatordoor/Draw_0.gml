var murder_draw = (murder && destroyed && (!allow_open))
if murder_draw
{
    var burn = spr_mettatonhole
    var burnw = sprite_get_width(burn)
    var burnh = sprite_get_height(burn)
    var scalex = 1.25
    draw_sprite_ext(burn, 0, (x - (abs(((burnw * scalex) - sprite_width)) / 2)), (y + abs((burnh - sprite_height))), scalex, 1, 0, image_blend, (image_alpha / 2))
    draw_sprite_ext(burn, 0, (x - (abs((burnw - sprite_width)) / 2)), ((y + abs((burnh - sprite_height))) + burnh), 1, -1.25, 0, image_blend, (image_alpha / 2))
}
draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, (murder_draw ? c_black : image_blend), image_alpha)
if (!murder_draw)
{
    draw_sprite_part_ext(doorsprite1, 0, side, 0, (20 - side), 50, x, y, 1, 1, image_blend, image_alpha)
    draw_sprite_part_ext(doorsprite2, 0, 0, 0, (20 - side), 50, ((x + 20) + side), y, 1, 1, image_blend, image_alpha)
}
if (doorbrokefix == 1)
{
    draw_sprite_part_ext(doorsprite1, 0, side, 0, (20 - side), 50, x, y, 1, 1, image_blend, image_alpha)
    draw_sprite_part_ext(doorsprite2, 0, 0, 0, (20 - side), 50, ((x + 20) + side), y, 1, 1, image_blend, image_alpha)
}
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, image_blend, image_alpha)
