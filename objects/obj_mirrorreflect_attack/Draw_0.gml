draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(border[0], border[2], border[1], border[3], false)
if (image_alpha > 0)
{
    var vars = ds_map_create()
    for (var i = 0; i < 4; i++)
    {
        remborder[i] = global.idealborder[i]
        global.idealborder[i] = border[i]
    }
    with (obj_borderparent)
    {
        instaborder = 1
        image_alpha = other.image_alpha
        ds_map_set(vars, ("x_" + string(id)), x)
        ds_map_set(vars, ("y_" + string(id)), y)
        ds_map_set(vars, ("size_" + string(id)), size)
        ds_map_set(vars, ("xscale_" + string(id)), image_xscale)
        ds_map_set(vars, ("yscale_" + string(id)), image_yscale)
        event_perform(ev_step, ev_step_normal)
        event_perform(ev_step, ev_step_end)
    }
    with (obj_smoothborder)
        event_perform(ev_draw, 0)
    for (i = 0; i < 4; i++)
        global.idealborder[i] = remborder[i]
    with (obj_borderparent)
    {
        x = ds_map_find_value(vars, ("x_" + string(id)))
        y = ds_map_find_value(vars, ("y_" + string(id)))
        size = ds_map_find_value(vars, ("size_" + string(id)))
        image_xscale = ds_map_find_value(vars, ("xscale_" + string(id)))
        image_yscale = ds_map_find_value(vars, ("yscale_" + string(id)))
        instaborder = 0
        image_alpha = 1
    }
    ds_map_destroy(vars)
}
