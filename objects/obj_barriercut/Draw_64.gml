if do_draw_gui
{
    shkx = (shaker * choose(1, -1))
    shky = (shaker * choose(1, -1))
    if (shaker > 0)
        shaker -= 1
    if (!((timer > 60 && timer < 310)))
    {
        draw_set_color(c_black)
        draw_set_alpha(b_al)
        ossafe_fill_rectangle(-1000, -1000, window_get_width(), window_get_height())
        draw_set_alpha(1)
    }
    draw_sprite_ext(spr_barriercut, 0, ((-bx) + shkx), (y + shky), 1, 1, 0, c_white, 1)
    draw_sprite_ext(spr_barriercut, 1, (bx + shkx), (y + shky), 1, 1, 0, c_white, 1)
}
