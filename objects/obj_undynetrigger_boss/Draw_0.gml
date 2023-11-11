if (fakedrawer == 1 && instance_exists(OBJ_WRITER))
{
    if (!surface_exists(ihatethiscutscenesurf))
        ihatethiscutscenesurf = surface_create(320, 240)
    surface_set_target(ihatethiscutscenesurf)
    draw_clear_alpha(c_white, 0)
    draw_set_color(c_white)
    scr_textbox_black(16, 160, 304, 235)
    surface_reset_target()
}
