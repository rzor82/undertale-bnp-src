draw_self_border_e()
if (global.debug == true)
{
    draw_set_color(c_red)
    draw_text((x + 200), y, string_hash_to_newline(hp))
    draw_text((x + 200), (y + 10), string_hash_to_newline(con2))
    draw_text((x + 200), (y + 20), string_hash_to_newline(vol))
}
