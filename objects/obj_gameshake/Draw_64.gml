for (tx = 0; tx < window_get_width(); tx += sprite_width)
{
    for (ty = 0; ty < window_get_height(); ty += sprite_height)
        draw_sprite(sprite_index, 0, (offsetx + tx), (offsety + ty))
}
