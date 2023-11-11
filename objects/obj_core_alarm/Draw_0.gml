if (global.debug == true && instance_exists(obj_mainchara))
{
    with (obj_mainchara)
    {
        other.x = x
        other.y = y
    }
    draw_set_alpha(1)
    draw_set_color(c_white)
    draw_set_font(fnt_small)
    draw_text(x, (y - 10), ((string(times) + " ") + string(alarm[0])))
}
