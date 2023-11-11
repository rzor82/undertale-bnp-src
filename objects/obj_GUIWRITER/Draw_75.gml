if (global.inbattle == 0)
{
    draw_set_color(c_white)
    if surface_exists(textsurf)
    {
        if (global.screen_border_id == 0)
            draw_surface_stretched(textsurf, 0, 0, 640, 480)
        else
            draw_surface_stretched(textsurf, 32, 27, 576, 426)
    }
    draw_set_alpha(1)
}
