var newfont = argument0
if (global.language == "ja")
{
    if (newfont == fnt_main)
        newfont = fnt_ja_main
    if (newfont == fnt_maintext)
        newfont = fnt_ja_maintext
    if (newfont == fnt_plain)
        newfont = fnt_ja_plain
}
draw_set_font(newfont)
