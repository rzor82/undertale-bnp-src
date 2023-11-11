if (drawbb == 1)
    draw_sprite(bb, 0, 0, 0)
else
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha)
if (con >= 1)
{
    gx = ((room_width / 2) - 320)
    draw_sprite_ext(spr_gameoverbg, 0, gx, 0, 1, 1, 0, c_white, 0.01)
}
