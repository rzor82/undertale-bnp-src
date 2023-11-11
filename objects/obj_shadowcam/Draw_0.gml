if global.debug
{
    with (obj_mainchara)
    {
        draw_set_alpha(1)
        draw_set_color(c_yellow)
        draw_set_font(fnt_maintext)
        draw_text(x, (y - 15), ((((string(other.con) + " ") + string(other.yy)) + " ") + string(other.camy)))
    }
}
