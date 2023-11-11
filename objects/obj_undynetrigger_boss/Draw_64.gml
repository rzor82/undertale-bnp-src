if (fakedrawer == 1 && instance_exists(OBJ_WRITER))
{
    draw_set_color(c_white)
    if surface_exists(ihatethiscutscenesurf)
    {
        if (global.screen_border_id == 0)
            draw_surface_stretched(ihatethiscutscenesurf, 0, 0, 640, 480)
        else
            draw_surface_stretched(ihatethiscutscenesurf, 32, 27, 576, 426)
    }
}
