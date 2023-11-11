if (reverse && timer == 0)
    r_index = 8
if (timer >= 0)
{
    timer += 1
    xc = (x + (sprite_width / 2))
    draw_set_color(c_white)
    if (rect_width > 1)
    {
        for (i = 3; i >= 1; i -= 1)
        {
            draw_set_alpha((((1.25 - (i / 4)) * rect_width) / 50))
            draw_rectangle((xc - (rect_width * (1 + (i / 4)))), -200, (xc + (rect_width * (1 + (i / 4)))), (y + sprite_height), false)
        }
    }
    draw_set_alpha(1)
    if (timer <= 19)
    {
        if (rect_width <= 50)
        {
            rect_width += 2
            rect_width *= 1.25
        }
    }
    if ((reverse && timer <= 19) || ((!reverse) && timer >= 19))
    {
        draw_sprite_ext(sprite_index, r_index, x, ((y - 32) + (r_index * 1.92)), image_xscale, image_yscale, 0, c_white, 1)
        if reverse
        {
            if (r_index > 0)
                r_index -= 0.501
            else
                r_index = 0
        }
        else if (r_index < 19)
            r_index += 0.501
        else
            r_index = 19
    }
    if (timer >= 36)
    {
        if (rect_width >= 2)
        {
            rect_width -= 1
            rect_width *= 0.9
        }
        else
            rect_width = 0
    }
}
