draw_self()
if instance_exists(black)
{
    if (fade == 1 && black.image_alpha < 1)
        black.image_alpha += 0.08
    else if (fade == 2 && black.image_alpha > 0)
        black.image_alpha -= 0.08
}
if (con > 9 && con < 15)
{
    if (con == 14)
    {
        if (alpha > 0)
            alpha -= 0.1
    }
    else if (alpha < 1)
        alpha += 0.1
    var out = string(collected)
    while (string_length(out) < 4)
        out = ("0" + out)
    draw_set_alpha(alpha)
    draw_set_color(c_white)
    draw_set_font(fnt_maintext)
    draw_text(((__view_get(0, 0) + (sprite_get_width(spr_menugoldbttn) * 2)) + 5), (__view_get(1, 0) + 3), out)
    draw_sprite_ext(spr_menugoldbttn, 0, (__view_get(0, 0) + 5), (__view_get(1, 0) + 5), 2, 2, 0, c_white, (alpha * abs(cos(siner))))
    if (global.debug == true)
    {
        draw_set_halign(fa_right)
        draw_text(((__view_get(0, 0) + __view_get(2, 0)) - 10), (__view_get(1, 0) + 10), ((string(__view_get(0, 0)) + " ") + string(__view_get(1, 0))))
        draw_set_halign(fa_left)
    }
}
