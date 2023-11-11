if (global.inbattle == 0)
{
    if (!surface_exists(facesurf))
        facesurf = surface_create(320, 640)
    surface_set_target(facesurf)
    draw_clear_alpha(c_white, 0)
    draw_set_color(c_white)
}
scr_set_face()
if instance_exists(obj_dialoguer)
{
    if (obj_dialoguer.side == 0)
    {
        with (obj_face)
        {
            if (y > (obj_dialoguer.yy + 80))
                y -= 155
        }
    }
    if (obj_dialoguer.side == 1)
    {
        with (obj_face)
        {
            if (y < (obj_dialoguer.yy + 80))
                y += 155
        }
    }
}
if visible
    draw_self()
if (global.inbattle == 0)
{
    surface_reset_target()
    if surface_exists(facesurf)
        draw_surface(facesurf, __view_get(0, view_current), __view_get(1, view_current))
    draw_set_alpha(1)
}
