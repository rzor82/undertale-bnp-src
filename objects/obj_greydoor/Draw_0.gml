if (con > 0)
{
    depth = 0
    with (obj_mainchara)
        depth = -1
    draw_set_alpha((0.8 * (1 - (alarm[2] / 14))))
    draw_set_color(c_black)
    draw_rectangle(x, (y + sprite_height), (x + sprite_width), (y + (sprite_height * 2)), false)
    draw_set_alpha(1)
}
draw_self()
