if (global.debug == true && global.draw_debug == 1)
{
    draw_set_color(c_yellow)
    scr_setfont(fnt_maintext)
    draw_text(obj_mainchara.x, (obj_mainchara.y - 30), string_hash_to_newline(alarm[4]))
    draw_text(obj_mainchara.x, (obj_mainchara.y - 10), string_hash_to_newline(unbuffer))
    draw_text(obj_mainchara.x, (obj_mainchara.y - 90), string_hash_to_newline(con))
}
