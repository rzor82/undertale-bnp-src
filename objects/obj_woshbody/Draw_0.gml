anim += 0.2
if (shinied == 1)
{
    draw_sprite_ext(spr_woshhanger_shiny, image_index, x, y, 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_woshduck_shiny, image_index, ((x + 46) - 4), (y + ducky), 2, 2, 0, c_white, 1)
    draw_sprite_part_ext(spr_woshwater, 0, 0, 0, 16, 28, ((40 + x) - (sin((anim / 2)) * 4)), wy, 2, 2, c_white, 1)
    draw_sprite_part_ext(spr_woshwater, 0, 0, 0, 16, 28, ((40 + x) + (sin((anim / 2)) * 4)), (wy + 6), 2, 2, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_woshtail_shiny, anim, (x + 86), (y + 46), 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_woshhead_shiny, image_index, x, (y + hy), 2, 2, 0, c_white, 1)
    if (bull == 0)
        draw_sprite_ext(spr_woshface_shiny, image_index, x, ((y + hy) + fy), 2, 2, 0, c_white, 1)
    if (bull == 1)
        draw_sprite_ext(spr_woshface_bull_shiny, image_index, x, ((y + hy) + fy), 2, 2, 0, c_white, 1)
}
else
{
    draw_sprite_ext(spr_woshhanger, image_index, x, y, 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_woshduck, image_index, ((x + 46) - 4), (y + ducky), 2, 2, 0, c_white, 1)
    draw_sprite_part_ext(spr_woshwater, 0, 0, 0, 16, 28, ((40 + x) - (sin((anim / 2)) * 4)), wy, 2, 2, c_white, 1)
    draw_sprite_part_ext(spr_woshwater, 0, 0, 0, 16, 28, ((40 + x) + (sin((anim / 2)) * 4)), (wy + 6), 2, 2, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_woshtail, anim, (x + 86), (y + 46), 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_woshhead, image_index, x, (y + hy), 2, 2, 0, c_white, 1)
    if (bull == 0)
        draw_sprite_ext(spr_woshface, image_index, x, ((y + hy) + fy), 2, 2, 0, c_white, 1)
    if (bull == 1)
        draw_sprite_ext(spr_woshface_bull, image_index, x, ((y + hy) + fy), 2, 2, 0, c_white, 1)
}
