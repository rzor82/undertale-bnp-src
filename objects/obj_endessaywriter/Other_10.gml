draw_set_font(fnt_maintext)
draw_set_color(c_white)
var longest = 0
lines = 0
part = ""
word = ""
line = ""
pos = 0
while (pos < string_length(essay) && lines < 3)
{
    pos += 1
    var character = string_char_at(essay, pos)
    if (character != "#")
        line += character
    if (character == " ")
    {
        word = ""
        var tmp_chr = ""
        var tmp_pos = pos
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
        essay_lines[lines++] = line
        longest = max(longest, string_width(line))
        line = " "
    }
}
if (string_length(line) > 2 && lines < 3)
{
    essay_lines[lines++] = line
    longest = max(longest, string_width(line))
}
for (i = 0; i < lines; i++)
    show_debug_message(essay_lines[i])
x = ((room_width - longest) / 2)
show_debug_message((((("x=" + string(x)) + " (Longest line: ") + string(longest)) + ")"))
parsed = 1
lines = 0
part = ""
word = ""
line = ""
pos = 0
