var y_top = argument0
var text = argument1
var wdiff = argument2
var adiff = argument3
var divider_x = scr_shop_divider_pos()
if (y_top < 116)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle((divider_x + 8), 124, 312, y_top)
}
draw_set_color(c_white)
scr_textbox(divider_x, y_top, 320, 140)
var text_x = (divider_x + 14)
var text_y = (y_top + 14)
if (global.language == "ja")
    text_y -= 4
draw_set_color(c_white)
scr_setfont(fnt_maintext)
draw_text(text_x, text_y, string_hash_to_newline(text))
if (wdiff == "none" && adiff == "none")
{
}
else
{
    facetype = spr_mainchara_face
    draw_sprite_ext(facetype, 0, text_x, (y_top + 79), 0.5, 0.5, 0, c_white, 1)
    if (wdiff != "none")
        sum[0] = wdiff
    else
        sum[0] = 0
    if (adiff != "none")
        sum[1] = adiff
    else
        sum[1] = 0
    scr_setfont(fnt_plain)
    for (j = 0; j < 2; j += 1)
    {
        dcolor = c_white
        addt = ""
        draw_set_color(c_white)
        if (sum[j] > 0)
        {
            draw_set_color(c_yellow)
            addt = "+"
        }
        if (sum[j] < 0)
            draw_set_color(c_aqua)
        draw_sprite_ext(spr_menuatkbttn, 0, (text_x + 20), (y_top + 77), 1, 1, 0, dcolor, 1)
        draw_sprite_ext(spr_menudefbttn, 0, (text_x + 20), (y_top + 87), 1, 1, 0, dcolor, 1)
        draw_text_transformed((text_x + 30), ((y_top + 77) + (10 * j)), string_hash_to_newline((addt + string(sum[j]))), 0.5, 0.5, 0)
    }
}
scr_setfont(fnt_maintext)
