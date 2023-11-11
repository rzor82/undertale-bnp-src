draw_self()
if (global.debug == true)
{
    draw_set_color(c_red)
    draw_text(((x + sprite_width) + 10), y, string_hash_to_newline(mercymod))
    draw_text(((x + sprite_width) + 10), (y + 10), string_hash_to_newline(mercy))
}
