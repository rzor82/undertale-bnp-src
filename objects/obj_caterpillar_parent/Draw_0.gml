if (special[target] == 4)
{
    draw_sprite_part_ext(sprite, sprite_subimg, 0, 0, sprite_width, (sprite_height - 5), sprite_x, (sprite_y + 5), image_xscale, image_yscale, c_white, image_alpha)
    draw_sprite(spr_waterripple, 0, sprite_x, sprite_y)
}
else
    draw_sprite_ext(sprite, sprite_subimg, sprite_x, sprite_y, image_xscale, image_yscale, 0, c_white, image_alpha)
if (dontdraw == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.25
}
else if (dontdraw == 2)
{
    if (image_alpha < 1)
        image_alpha += 0.25
}
else if (dontdraw == 3)
    image_alpha = 0
else if (dontdraw == 0)
    image_alpha = 1
