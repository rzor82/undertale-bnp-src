if (parsed == 0 && do_old_write == 0)
    event_user(0)
if ((!instance_exists(obj_endmettevent)) || obj_endmettevent.main_timer > 160)
{
    draw_set_font(fnt_maintext)
    draw_set_color(c_white)
    if (do_old_write == 1 && timer == 0 && pos < string_length(essay) && lines < 3)
    {
        pos += 1
        var character = string_char_at(essay, pos)
        if (character != "#")
            line += character
        if (character == " ")
        {
            word = ""
            tmp_chr = ""
            tmp_pos = pos
            while (tmp_pos < string_length(essay) && tmp_chr != " " && tmp_chr != "#")
            {
                tmp_pos += 1
                tmp_chr = string_char_at(essay, tmp_pos)
                if (tmp_chr != " " && tmp_chr != "#")
                    word += tmp_chr
            }
            if (string_width((line + word)) > (room_width - (x * 2)))
                character = "#"
        }
        if (character == "#" || string_width(line) > (room_width - (x * 2)))
        {
            part += "#"
            line = ""
            lines++
        }
        if (lines < 3)
        {
            if (line == "" && character != " ")
            {
                part += " "
                line += " "
            }
            if (character != "#")
                part += character
        }
        timer = delay
    }
    else if (do_old_write == 0)
    {
        if (lines >= 3)
            lines = 2
        for (i = 0; i < lines; i++)
            draw_text(((room_width - string_width(essay_lines[i])) / 2), (y + (string_height(essay_lines[i]) * i)), essay_lines[i])
        if (timer == 0)
            line_pos[lines] += 1
        draw_text(((room_width - string_width(essay_lines[i])) / 2), (y + (string_height(essay_lines[lines]) * lines)), string_copy(essay_lines[lines], 0, line_pos[lines]))
        if (line_pos[lines] >= string_length(essay_lines[lines]))
        {
            if (lines < 3)
                lines++
            else
                line_pos[lines] -= 1
        }
        timer = delay
    }
    timer -= 1
    if (do_old_write == 1)
        draw_text(x, y, string_hash_to_newline(part))
}
