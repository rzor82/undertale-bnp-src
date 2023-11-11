draw_self()
if (key_alpha > 0 || (timed_out && waiting && (!do_dialog)))
{
    key_alpha = sin(siner)
    siner += siner_inc
    if (key_alpha < 0)
    {
        key_alpha = 0
        siner = 0
    }
    draw_set_alpha(key_alpha)
    draw_set_font(fnt_plain)
    key_w = string_width("Z")
    key_h = string_height("Z")
    draw_set_color(c_white)
    draw_rectangle(__view_get(0, 0), (((__view_get(1, 0) + __view_get(3, 0)) - key_h) - 10), ((__view_get(0, 0) + key_w) + 10), (__view_get(1, 0) + __view_get(3, 0)), false)
    draw_set_color(c_black)
    draw_text((__view_get(0, 0) + 5), (((__view_get(1, 0) + __view_get(3, 0)) - key_h) - 5), "Z")
}
if (global.debug == true)
{
    draw_set_alpha(1)
    draw_set_font(fnt_small)
    draw_set_color(c_yellow)
    draw_text(x, y, ((((((string(con) + " ") + string(alarm[4])) + " ") + string(alarm[2])) + " ") + (string(__view_get(2, 0)) + (" " + string(__view_get(3, 0))))))
}
if instance_exists(obj_labfog)
    depth = (obj_labfog.depth + 1)
