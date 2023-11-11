var divided = argument0
var divider_x = scr_shop_divider_pos()
draw_set_color(c_black)
ossafe_fill_rectangle(8, 128, 308, 228)
draw_set_color(c_white)
if (argument_count >= 2)
{
    var is_catty_bratty = argument1
    if (is_catty_bratty == 1)
    {
        divider_x_2 = 105
        if (global.language == "ja")
            divider_x_2 = 111
        scr_textbox_black(0, 120, divider_x_2, 240)
        scr_textbox_black(divider_x_2, 120, divider_x, 240)
        scr_textbox_black(divider_x, 120, 320, 240)
        draw_sprite(spr_shopname, 1, 20, 120)
        draw_sprite(spr_shopname, 0, (divider_x_2 + 20), 120)
    }
    else if (is_catty_bratty == 2)
    {
        scr_textbox_black(0, 120, 157, 240)
        scr_textbox_black(157, 120, 320, 240)
        draw_sprite(spr_shopname, 1, 20, 120)
        draw_sprite(spr_shopname, 0, 177, 120)
    }
    else if (is_catty_bratty == 3)
    {
        scr_textbox_black(0, 120, divider_x, 240)
        scr_textbox_black(divider_x, 120, 320, 240)
        draw_sprite(spr_shopname, 0, (divider_x + 20), 120)
    }
    else if (is_catty_bratty == 4)
    {
        scr_textbox_black(0, 120, divider_x, 240)
        scr_textbox_black(divider_x, 120, 320, 240)
        draw_sprite(spr_shopname, 1, (divider_x + 20), 120)
    }
}
else if (argument_count <= 1)
{
    if divided
    {
        scr_textbox_black(0, 120, divider_x, 240)
        scr_textbox_black(divider_x, 120, 320, 240)
    }
    else
        scr_textbox_black(0, 120, 320, 240)
}
if (room == room_shop5)
{
    if (argument_count <= 2)
    {
        if divided
        {
            scr_textbox_black(0, 120, divider_x, 240)
            scr_textbox_black(divider_x, 120, 320, 240)
            draw_sprite(spr_shopname, 2, 20, 120)
        }
    }
    else
        scr_textbox_black(0, 120, 320, 240)
}
if (room == room_shop2)
{
    if (argument_count <= 2)
    {
        if divided
        {
            scr_textbox_black(0, 120, divider_x, 240)
            scr_textbox_black(divider_x, 120, 320, 240)
            draw_sprite(spr_shopname, 3, 20, 120)
        }
    }
    else
        scr_textbox_black(0, 120, 320, 240)
}
if (room == room_shop1)
{
    if (argument_count <= 2)
    {
        if divided
        {
            scr_textbox_black(0, 120, divider_x, 240)
            scr_textbox_black(divider_x, 120, 320, 240)
            draw_sprite(spr_shopname, 4, 20, 120)
        }
    }
    else
        scr_textbox_black(0, 120, 320, 240)
}
if (room == room_shop4)
{
    if (argument_count <= 2)
    {
        if divided
        {
            scr_textbox_black(0, 120, divider_x, 240)
            scr_textbox_black(divider_x, 120, 320, 240)
            draw_sprite(spr_shopname, 5, 20, 120)
        }
    }
    else
        scr_textbox_black(0, 120, 320, 240)
}
