if (image_alpha > 0)
{
    draw_set_color(c_black)
    draw_set_alpha(image_alpha)
    var xx = __view_get(0, 0)
    var yy = __view_get(1, 0)
    var ww = __view_get(2, 0)
    var hh = (global.idealborder[2] - yy)
    draw_rectangle(xx, yy, (xx + ww), (yy + hh), false)
    image_alpha -= 0.05
}
if (borderalpha > 0)
{
    for (var i = 0; i < 4; i++)
    {
        remborder[i] = global.idealborder[i]
        global.idealborder[i] = border[i]
    }
    with (obj_borderparent)
    {
        instaborder = 1
        image_alpha = other.borderalpha
        event_perform(ev_step, ev_step_normal)
        event_perform(ev_step, ev_step_end)
        draw_self()
    }
    for (i = 0; i < 4; i++)
        global.idealborder[i] = remborder[i]
    with (obj_borderparent)
    {
        event_perform(ev_step, ev_step_normal)
        event_perform(ev_step, ev_step_end)
        if (other.con == 4)
            instaborder = 0
        image_alpha = 1
    }
    borderalpha -= 0.05
}
