if (requesting == 0 && timer < 150)
{
    timer++
    draw_set_alpha(1)
    draw_set_color(c_yellow)
    draw_set_font(fnt_small)
    draw_set_halign(fa_right)
    var msg = -4
    switch state
    {
        case 0:
            msg = "Failed to locate data.win."
            break
        case 1:
            draw_set_color(c_lime)
            msg = "data.win verified."
            break
        case 2:
            draw_set_color(c_orange)
            msg = "Failed to get hashes."
        case 4:
            draw_set_color(c_red)
            msg = "data.win is edited"
    }

    if (msg != -4)
        draw_text(((__view_get(0, 0) + __view_get(2, 0)) - 5), ((__view_get(1, 0) + __view_get(3, 0)) - 15), msg)
    draw_set_halign(fa_left)
}
