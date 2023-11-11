depth = 999999
draw_sprite(bg_mttlodge_geno, 0, 0, 0)
if active
{
    siner += siner_inc
    alpha = (sin(siner) * max_alpha)
    if (alpha <= 0)
    {
        alarm[0] = 35
        active = false
        alpha = 0
    }
    with (obj_mainchara)
        image_blend = merge_color(c_white, c_black, ((other.max_alpha / 3) * 2))
    col = make_color_hsv(0, 200, 255)
    draw_sprite_ext(spr_mttwindow, 0, 141, 122, 1, 1, 0, col, alpha)
    draw_sprite_ext(spr_mttwindow, 0, 301, 122, 1, 1, 0, col, alpha)
    draw_sprite_ext(spr_mttwindow, 0, 141, 22, 1, 1, 0, col, alpha)
    draw_sprite_ext(spr_mttwindow, 0, 221, 22, 1, 1, 0, col, alpha)
    draw_sprite_ext(spr_mttwindow, 0, 301, 22, 1, 1, 0, col, alpha)
    draw_sprite_ext(spr_mttdoor, 0, 201, 143, 1, 1, 0, col, alpha)
    draw_set_color(c_black)
    draw_set_alpha(alpha)
    draw_rectangle(239, 143, 240, 200, false)
}
draw_set_alpha(1)
