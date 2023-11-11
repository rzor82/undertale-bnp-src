for (i = 0; i < argument_count; i++)
    argument[i] = floor(argument[i])
textbox_width = ((argument[2] - argument[0]) - 30)
if (textbox_width < 0)
    textbox_width = 0
textbox_height = ((argument[3] - argument[1]) - 30)
if (textbox_height < 0)
    textbox_height = 0
if (global.oppatextboxstyle == 2)
{
    draw_set_color(c_black)
    draw_rectangle((argument[0] - 1), (argument[1] - 1), (argument[2] - 1.5), (argument[3] + 0.5), true)
    draw_rectangle((argument[0] - 1.5), (argument[1] - 1.5), (argument[2] - 1), (argument[3] + 1), true)
    draw_set_color(c_white)
    draw_rectangle(argument[0], argument[1], (argument[2] - 2), argument[3], false)
    draw_set_color(c_black)
    draw_rectangle((argument[0] + 3), (argument[1] + 3), (argument[2] - 5), (argument[3] - 3), false)
    draw_set_color(c_white)
}
else
{
    if (textbox_width > 0)
    {
        draw_sprite_stretched(spr_textbox_side1, 1, (argument[0] + 15), (argument[1] - 2), (textbox_width + 1), 15)
        draw_sprite_ext(spr_textbox_side1, 0, (argument[0] + 15), (argument[3] + 2), (textbox_width + 1), -1, 0, c_white, 1)
    }
    if (textbox_height > 0)
    {
        draw_sprite_ext(spr_textbox_side2, 0, (argument[2] + 2), (argument[1] + 15), -1, (textbox_height + 1), 0, c_white, 1)
        draw_sprite_ext(spr_textbox_side2, 1, (argument[0] - 2), (argument[1] + 15), 1, (textbox_height + 1), 0, c_white, 1)
    }
    if (global.oppatextboxstyle == 0)
    {
        draw_sprite_ext(spr_textbox_corner, 0, argument[0], argument[1], 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_textbox_corner, 1, argument[2], argument[1], -1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_textbox_corner, 2, argument[0], argument[3], 1, -1, 0, c_white, 1)
        draw_sprite_ext(spr_textbox_corner, 3, argument[2], argument[3], -1, -1, 0, c_white, 1)
    }
    else if (global.oppatextboxstyle == 1)
    {
        draw_sprite_ext(spr_textbox_corner2, 0, argument[0], argument[1], 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_textbox_corner2, 1, argument[2], argument[1], -1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_textbox_corner2, 2, argument[0], argument[3], 1, -1, 0, c_white, 1)
        draw_sprite_ext(spr_textbox_corner2, 3, argument[2], argument[3], -1, -1, 0, c_white, 1)
    }
}
idowhatiwant = "blaize if you put this in as a comment i will die"
