if orange
{
    if global.debug
    {
        if (charging == 1 && charge <= 0)
        {
            var chargeval = abs(charge)
            if (charge <= (-maxcharge))
                chargeval = maxcharge
            var drawcolor = draw_get_color()
            draw_set_color(c_red)
            draw_text(view_xport[0], view_yport[0], chargeval)
            draw_set_color(drawcolor)
        }
    }
    if (charging == 1)
    {
        var pitchval = ((1 - chargepitch) * (maxcharge * 2))
        chargeval = (abs(charge) - pitchval)
        if (charge <= ((maxcharge * 2) - 1))
        {
            var scale = (abs(sin((chargeval / 10))) / 2)
            draw_sprite_ext(sprite_index, 0, (x - (scale * 8)), (y - (scale * 8)), (1 + scale), (1 + scale), image_angle, image_blend, 0.3)
            scale = abs(sin((chargeval / 14)))
            draw_sprite_ext(sprite_index, 0, ((x - 2) - (scale * 8)), ((y - 2) - (scale * 8)), (1.2 + scale), (1.2 + scale), image_angle, image_blend, 0.3)
        }
    }
    if (charging == 3)
    {
        chargeval = (chargepitch * ((maxcharge * 2) - 8))
        scale = (abs(sin((chargeval / 10))) / 2)
        draw_sprite_ext(sprite_index, 0, (x - (scale * 8)), (y - (scale * 8)), (1 + scale), (1 + scale), image_angle, image_blend, 0.3)
        scale = abs(sin((chargeval / 14)))
        draw_sprite_ext(sprite_index, 0, ((x - 2) - (scale * 8)), ((y - 2) - (scale * 8)), (1.2 + scale), (1.2 + scale), image_angle, image_blend, 0.3)
    }
}
scr_heart_draw()
