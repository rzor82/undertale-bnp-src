if (global.debug == true)
{
    with (obj_mainchara)
    {
        draw_set_color(0xFFA914)
        draw_text(x, (y - 10), string_hash_to_newline(other.check))
        draw_text(x, (y - 20), string_hash_to_newline(other.qtimer))
    }
}
