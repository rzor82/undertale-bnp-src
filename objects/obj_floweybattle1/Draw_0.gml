draw_self()
if (global.debug == true && global.draw_debug == 1)
{
    draw_set_color(c_yellow)
    scr_setfont(fnt_maintext)
    draw_text(x, (y - 30), string_hash_to_newline(alarm[1]))
    draw_text(x, (y - 60), string_hash_to_newline(conversation))
    draw_text(x, (y - 90), string_hash_to_newline(toevil))
    draw_text(x, (y - 120), string_hash_to_newline(towink))
}
