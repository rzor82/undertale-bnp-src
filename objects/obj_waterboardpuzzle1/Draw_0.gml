if (global.debug == true)
{
    if keyboard_check_pressed(ord("W"))
        wondraw ^= 1
    if (wondraw == 1)
    {
        draw_set_color(c_yellow)
        scr_setfont(fnt_maintext)
        draw_text(obj_mainchara.x, (obj_mainchara.y - 10), string_hash_to_newline(won))
    }
}
