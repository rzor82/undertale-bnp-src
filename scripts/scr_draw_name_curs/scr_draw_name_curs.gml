var xx = argument0
var yy = argument1
if (global.language == "ja")
{
    var use_font = fnt_ja_curs
    yy += 3
}
else
{
    use_font = fnt_small2
    var i = 1
    while (i < strlen(global.charname))
    {
        if (ord(string_char_at(global.charname, i)) >= 12288)
        {
            use_font = 12
            yy += 3
            break
        }
        else
        {
            i++
            continue
        }
    }
}
draw_set_font(use_font)
draw_set_color(color)
draw_text(xx, yy, string_hash_to_newline(global.charname))
return floor((string_width(string_hash_to_newline(global.charname)) * 2.5));
